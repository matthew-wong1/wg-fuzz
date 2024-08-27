struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
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

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(26757u), Struct_1(4294967295u), Struct_1(1u), Struct_1(51971u), Struct_1(1u), Struct_1(73097u), Struct_1(1u), Struct_1(80782u), Struct_1(0u), Struct_1(17733u), Struct_1(61238u), Struct_1(0u), Struct_1(4294967295u), Struct_1(13455u), Struct_1(0u), Struct_1(4294967295u), Struct_1(9380u), Struct_1(28158u), Struct_1(2600u), Struct_1(54447u), Struct_1(55939u), Struct_1(75144u), Struct_1(26079u), Struct_1(14330u), Struct_1(15508u), Struct_1(67142u), Struct_1(3915u), Struct_1(1u), Struct_1(4294967295u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(~min(abs(_wgslsmith_clamp_u32(1u, 16763u, _wgslsmith_add_u32(31440u, 67928u))), ~1u), 29u)];
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(27345u, ~(var_0.a & 3166u))), 29u)];
    var var_1 = _wgslsmith_dot_vec2_i32(~vec2<i32>(abs(54846i), 1i), ~_wgslsmith_add_vec2_i32(~vec2<i32>(38257i, -13173i), firstTrailingBit(-vec2<i32>(-2147483647i, -25516i))));
    var var_2 = Struct_1(14167u);
    var_1 = abs(-2147483647i);
    return vec4<bool>(!any(vec2<bool>(true, var_0.a != 1u)), !any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)))), false);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = func_3();
    var var_1 = false;
    let var_2 = ~(-2147483647i);
    let var_3 = Struct_1(18350u);
    var var_4 = vec4<bool>(var_0.x, true && any(!select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, false, true, false), vec4<bool>(false, var_0.x, var_0.x, var_0.x))), true, any(vec4<bool>(!var_0.x, var_0.x, false, true == func_3().x)));
    return arg_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-306f, -451f, arg_1, 1i))), 1f)));
    let var_2 = arg_1;
    var var_3 = -min(~vec4<i32>(i32(-1i) * -1i, _wgslsmith_mult_i32(-1i, -23398i), ~(-33536i), firstTrailingBit(-13895i)), -(vec4<i32>(8424i, 2147483647i, 1i, -2147483647i) >> (_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(41090u, arg_0.x, 22836u, u_input.b), vec4<u32>(99351u, 1u, 4294967295u, 1u)) % vec4<u32>(32u))));
    var_0 = arg_1;
    return Struct_1(~80048u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1204f)), -664f))) + 810f);
    var var_1 = true;
    let var_2 = u_input.d.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2035f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-264f * _wgslsmith_f_op_f32(-1626f + -1485f)) + _wgslsmith_f_op_f32(-751f * 1084f))));
    let var_3 = func_1(_wgslsmith_sub_vec2_u32(u_input.d.yz, u_input.a.wy ^ u_input.d.zy) << ((u_input.d.yy >> ((u_input.a.xz & ~vec2<u32>(60278u, 111722u)) % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_1(abs(~var_2)));
    var var_4 = select(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), !select(vec2<bool>(true, true), func_3().xz, true), !vec2<bool>(false, all(vec4<bool>(false, false, false, false)) || true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -275f) + -1468f)), _wgslsmith_f_op_f32(ceil(546f))), ~_wgslsmith_mod_i32(~1i, -17227i));
}

