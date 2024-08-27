struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<i32> {
    var var_0 = vec2<i32>(-41052i, ~(~(-firstLeadingBit(2147483647i))));
    let var_1 = vec2<bool>(!any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, false)));
    var_0 = abs(vec2<i32>(var_0.x | -28331i, 30977i)) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(firstTrailingBit(var_0.x), -var_0.x) & _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-75842i, var_0.x)), select(vec2<i32>(var_0.x, -1i), vec2<i32>(-71757i, var_0.x), vec2<bool>(var_1.x, false))), vec2<i32>(countOneBits(-var_0.x), var_0.x));
    let var_2 = max(~vec4<i32>(-1i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-4300i, var_0.x), abs(-2147483647i)), var_0.x, firstTrailingBit(19777i) | countOneBits(1i)), -vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(27095i, var_0.x, 0i, var_0.x), vec4<i32>(1i, 1i, var_0.x, var_0.x)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-17307i, 2147483647i), -41256i), 2147483647i, -1i));
    var var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x >> (u_input.a.x % 32u), var_0.x) ^ -(var_2.zw | vec2<i32>(var_0.x, var_0.x)), -select(vec2<i32>(2147483647i, -52029i), vec2<i32>(5214i, -37066i) ^ var_2.yw, vec2<bool>(var_1.x, false))), abs(-var_2.zx));
    return ~vec3<i32>(var_2.x, abs(-(-2147483647i | var_2.x)), -var_2.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<vec2<bool>, 32>();
    var var_0 = arg_1.b.x;
    var var_1 = arg_1;
    return Struct_1(countOneBits(func_3() ^ _wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, -2147483647i, 2147483647i), ~vec3<i32>(0i, arg_1.a.x, -15724i), var_1.a ^ arg_1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b - vec3<f32>(-1000f, 850f, arg_1.b.x)) * _wgslsmith_div_vec3_f32(var_1.b, arg_1.b)))));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_2.zx);
    let var_1 = func_2(vec2<u32>(~4294967295u, arg_0) << (vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, 0u), arg_0), ~1u) % vec2<u32>(32u)), Struct_1(~(-reverseBits(vec3<i32>(arg_3, arg_1.x, arg_1.x))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_f_op_f32(round(-944f)), _wgslsmith_f_op_f32(trunc(arg_2.x))), arg_2.xxx)), ~(~vec4<u32>(1u, arg_0 ^ u_input.a.x, ~u_input.a.x, u_input.a.x)));
    let var_2 = !all(select(select(vec2<bool>(true, false), !global0[_wgslsmith_index_u32(19544u, 32u)], false), !select(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(arg_0, 32u)], true), false));
    global0 = array<vec2<bool>, 32>();
    var var_3 = reverseBits(vec3<i32>(-1i) * -var_1.a);
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~vec3<u32>(u_input.a.x << (countOneBits(~4294967295u) % 32u), ~u_input.a.x, 0u);
    var var_1 = Struct_1(max(arg_1.a, arg_3.a ^ min(-arg_1.a, vec3<i32>(arg_3.a.x, -2147483647i, 2147483647i))), arg_1.b);
    return func_2(~(~(~var_0.zx)) | countOneBits(_wgslsmith_add_vec2_u32(var_0.xy, var_0.zy)), arg_3, reverseBits(~reverseBits(vec4<u32>(0u, var_0.x, var_0.x, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(341f + -232f), _wgslsmith_f_op_f32(min(-398f, 2270f))))))));
    let var_1 = func_4(!(!(!func_1(4294967295u, vec4<i32>(2147483647i, 2147483647i, -1i, -8059i), vec4<f32>(476f, var_0.x, var_0.x, var_0.x), -2147483647i))), Struct_1(vec3<i32>(1i, 2147483647i, 1i), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, 472f))))))), var_0.x, func_2(vec2<u32>(reverseBits(u_input.a.x) >> (u_input.a.x % 32u), u_input.a.x), func_2(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(u_input.a.x, 7848u) & u_input.a, vec2<u32>(u_input.a.x, 1u)), func_2(_wgslsmith_mod_vec2_u32(u_input.a, u_input.a), func_2(vec2<u32>(u_input.a.x, 7328u), Struct_1(vec3<i32>(-2147483647i, -4647i, 0i), vec3<f32>(var_0.x, 2046f, 966f)), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, 1u, 0u))), ~(~vec4<u32>(0u, 4160u, u_input.a.x, u_input.a.x))), ~(vec4<u32>(0u, u_input.a.x, u_input.a.x, 15538u) ^ vec4<u32>(0u, 4294967295u, 56429u, u_input.a.x)) & abs(~vec4<u32>(1u, 8248u, 21857u, 10297u))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.b.zz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b.x, var_0.x), vec2<f32>(var_0.x, 865f))), var_1.b.zy))) - _wgslsmith_f_op_vec2_f32(-var_1.b.yz));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.b.xz, vec2<f32>(-1234f, var_1.b.x)) + _wgslsmith_f_op_vec2_f32(abs(var_1.b.zy))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(2513f)))) + -1525f), func_4(!any(vec4<bool>(true, false, false, false)), var_1, var_1.b.x, func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a), var_1, firstLeadingBit(vec4<u32>(20869u, 1u, u_input.a.x, 84986u)))).b.x));
    let var_2 = !vec4<bool>(any(!select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.a.x, 32u)], false)), true, true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-665f)) * var_0.x)), var_1.b.x));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), var_1.b.yx) * var_1.b.yz) - var_1.b.zz)));
    var var_3 = Struct_1(var_1.a, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~_wgslsmith_clamp_i32(var_3.a.x, ~var_3.a.x, 1i), -firstTrailingBit(5769i), _wgslsmith_dot_vec4_i32(~vec4<i32>(14792i, var_3.a.x, var_3.a.x, var_3.a.x), vec4<i32>(0i, var_3.a.x, var_1.a.x, var_3.a.x >> (73926u % 32u)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-func_4(all(vec4<bool>(false, var_2.x, var_2.x, true)), Struct_1(var_1.a, var_1.b), -571f, func_4(var_2.x, Struct_1(var_1.a, var_1.b), 892f, var_1)).b.yy))));
}

