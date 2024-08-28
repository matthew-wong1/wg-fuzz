struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> vec2<i32> {
    let var_0 = 1000f;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -237f), _wgslsmith_f_op_f32(step(var_0, 1000f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0)) + -1237f)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-303f, var_0), vec2<f32>(1000f, 180f), false)), _wgslsmith_div_vec2_f32(vec2<f32>(608f, var_0), vec2<f32>(var_0, 625f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2073f, -2282f))), _wgslsmith_f_op_f32(ceil(1000f)))));
    return vec2<i32>(countOneBits(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, 0i), vec3<i32>(0i, 1i, 46358i)) << ((_wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.a.zz) | u_input.a.x) % 32u)) & vec2<i32>(~(-21413i), ~min(~(-2147483647i), -12942i));
}

fn func_3() -> f32 {
    let var_0 = false;
    let var_1 = Struct_1(var_0, ~vec2<i32>(-29359i, _wgslsmith_div_i32(~0i, 1i)));
    let var_2 = _wgslsmith_f_op_f32(abs(400f));
    var var_3 = var_1;
    let var_4 = u_input.a.x;
    return _wgslsmith_f_op_f32(-var_2);
}

fn func_4(arg_0: u32, arg_1: vec4<f32>) -> vec2<bool> {
    let var_0 = reverseBits(u_input.a.wx);
    let var_1 = ~1i;
    let var_2 = !select(select(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), 0i == var_1)), vec2<bool>(true, false), any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), true)));
    var var_3 = ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(select(u_input.a, vec4<u32>(u_input.a.x, 26506u, 1271u, 0u), vec4<bool>(false, var_2.x, false, false)) | vec4<u32>(u_input.a.x, 1u, u_input.a.x, var_0.x), ~u_input.a), ~1711u, 0u);
    var var_4 = arg_1.x;
    return vec2<bool>(var_2.x, all(vec4<bool>(any(select(vec3<bool>(false, var_2.x, true), vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(true, var_2.x, var_2.x))), true, (var_1 | var_1) == _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_1, var_1), vec3<i32>(7980i, 0i, 0i)), select(true, false, all(vec3<bool>(false, var_2.x, var_2.x))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<f32>) -> f32 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(min(var_0.x << (u_input.a.x % 32u), 74481u), _wgslsmith_dot_vec4_u32(~vec4<u32>(27514u, 1460u, var_0.x, u_input.a.x), u_input.a)), (max(arg_1, arg_1) | select(u_input.a.yw, var_0.wy, vec2<bool>(true, arg_0.a))) << (abs(u_input.a.zz) % vec2<u32>(32u))) >> (vec2<u32>(104199u, firstLeadingBit(arg_1.x)) % vec2<u32>(32u));
    let var_2 = 4294967295u;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -2778f);
    let var_4 = select(func_4(4294967295u, vec4<f32>(arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(func_3())), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * -818f) - arg_2.x))), select(vec2<bool>(any(vec3<bool>(arg_0.a, true, false)) && arg_0.a, false), func_4(0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.x, 706f, 1000f, arg_2.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -1000f, arg_2.x, -2125f) + vec4<f32>(arg_2.x, arg_2.x, 811f, arg_2.x)))), !vec2<bool>(true, !arg_0.a)), arg_0.a);
    return _wgslsmith_f_op_f32(round(arg_2.x));
}

fn func_5(arg_0: bool, arg_1: f32) -> StorageBuffer {
    let var_0 = u_input.a.ww;
    var var_1 = 793f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -1813f))));
    var_1 = arg_1;
    var_1 = arg_1;
    return StorageBuffer(vec4<i32>(-abs(-2147483647i), func_1().x, -_wgslsmith_sub_i32(~7211i, -1i << (u_input.a.x % 32u)), -2843i), max(vec3<i32>(1i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-28681i, -1i, 20864i, 1i), vec4<i32>(0i, 45499i, 51802i, 46294i))), ~reverseBits(40502i)), countOneBits(countOneBits(vec3<i32>(16792i, 0i, -2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.a.x << (u_input.a.x % 32u));
    var var_1 = Struct_1(true, _wgslsmith_div_vec2_i32(func_1(), -countOneBits(vec2<i32>(1i, 1i))));
    let var_2 = Struct_1(select(any(vec3<bool>(true, var_1.b.x != var_1.b.x, !var_1.a)), any(!vec2<bool>(true, var_1.a)) || var_1.a, true), var_1.b);
    let x = u_input.a;
    s_output = func_5(var_2.a, _wgslsmith_f_op_f32(func_2(var_2, vec2<u32>(9860u, 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-809f, -1362f, -392f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-609f, -1343f, 1000f))), var_1.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1490f, 689f, 1000f)))))));
}

