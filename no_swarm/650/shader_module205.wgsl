struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> vec2<u32> {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-816f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1445f)) + _wgslsmith_f_op_f32(trunc(232f))), _wgslsmith_f_op_f32(step(-1155f, -676f)), 957f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(779f, -774f, 1048f, -109f) * vec4<f32>(-2089f, -102f, 2706f, 1000f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(622f, 749f, 227f, -702f)))))));
    return vec2<u32>(~28227u, 51949u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_mult_u32(arg_1.x & arg_2.a, 52978u), select(arg_2.b, !arg_2.b, _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), u_input.b) <= 44796i));
    let var_1 = func_3(true, countOneBits(vec4<i32>(~u_input.b, 1i, -24344i, u_input.b))) << (u_input.a % vec2<u32>(32u));
    let var_2 = Struct_1(30602u, select(vec2<bool>(select(arg_0.b.x, any(arg_2.b), true), all(vec4<bool>(var_0.b.x, arg_0.b.x, arg_2.b.x, var_0.b.x)) || true), arg_2.b, true));
    var var_3 = true;
    var_0 = Struct_1(~4294967295u, vec2<bool>(any(!vec4<bool>(arg_2.b.x, arg_0.b.x, arg_2.b.x, arg_0.b.x)), any(select(vec2<bool>(var_0.b.x, var_0.b.x), var_2.b, true))));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 851f, -2002f, 943f))))) + vec4<f32>(1310f, _wgslsmith_f_op_f32(361f + _wgslsmith_f_op_f32(1000f * 1729f)), 1f, _wgslsmith_f_op_f32(-293f - _wgslsmith_f_op_f32(-190f - -371f))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec4_f32(arg_1 + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-985f, arg_1.x, arg_1.x, _wgslsmith_f_op_f32(arg_1.x - arg_1.x))))));
    var var_2 = any(select(!(!select(vec4<bool>(var_0.b.x, true, false, true), vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_2.b.x), var_0.b.x)), vec4<bool>(true, !(!var_0.b.x), false, !(!arg_2.b.x)), true));
    var_2 = any(!vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, var_0.b.x), arg_2.b)), arg_2.b.x, any(select(vec2<bool>(var_0.b.x, arg_2.b.x), vec2<bool>(true, true), arg_2.b))));
    let var_3 = Struct_1(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_2.a, ~var_0.a)), ~vec2<u32>(~arg_2.a, 0u)), vec2<bool>(false, var_0.b.x));
    return Struct_1(~(~(u_input.a.x | 80431u) ^ ~(var_0.a | 4294967295u)), !select(select(!vec2<bool>(false, arg_2.b.x), !var_3.b, select(arg_2.b, vec2<bool>(arg_2.b.x, arg_2.b.x), true)), var_3.b, select(vec2<bool>(false, true), select(vec2<bool>(var_3.b.x, false), vec2<bool>(var_0.b.x, var_0.b.x), var_0.b), arg_2.b)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(countOneBits(u_input.a.x), select(vec2<bool>(any(vec4<bool>(false, false, true, true)), all(vec2<bool>(false, true))), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = Struct_1(46611u, var_0.b);
    let var_2 = Struct_1(~u_input.a.x & var_1.a, var_1.b);
    let var_3 = func_4(~(~(~(vec3<u32>(u_input.a.x, 48575u, var_0.a) | vec3<u32>(1u, u_input.a.x, 4294967295u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(9393u, var_2.b), vec4<u32>(3263u, var_1.a, var_1.a, var_1.a), Struct_1(var_1.a, vec2<bool>(false, true))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(971f, 338f, 1220f, 803f) - vec4<f32>(-1019f, 777f, 651f, 537f))))), Struct_1(~var_2.a, select(select(vec2<bool>(false, var_1.b.x), !var_0.b, false), !select(vec2<bool>(var_0.b.x, false), var_2.b, var_1.b.x), true)));
    var var_4 = _wgslsmith_mod_i32(36548i, -57200i);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~u_input.a.x);
    var var_1 = func_1();
    var_1 = Struct_1(_wgslsmith_div_u32(1u, 73952u), var_1.b);
    let var_2 = vec4<i32>(31727i, u_input.b | (i32(-1i) * -1i), ~u_input.b, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(var_2.zyw, vec3<i32>(u_input.b, u_input.b, 29996i)), min(vec3<i32>(firstLeadingBit(var_2.x), -2147483647i, -1762i), var_2.yww), select(!select(vec3<bool>(false, var_1.b.x, true), vec3<bool>(true, true, false), var_1.b.x), vec3<bool>(true, any(vec4<bool>(false, true, true, var_1.b.x)), !var_1.b.x), var_1.b.x)), countOneBits(13531i), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0, var_1.a, u_input.a.x, var_1.a) ^ max(vec4<u32>(var_1.a, u_input.a.x, 50702u, u_input.a.x), vec4<u32>(0u, 36924u, 0u, 16646u)), firstLeadingBit(vec4<u32>(var_1.a, u_input.a.x, 1u, 34707u)) << (vec4<u32>(87112u, var_1.a, 108805u, var_0) % vec4<u32>(32u))) >> (select(~(~vec4<u32>(0u, var_1.a, var_0, var_1.a)), vec4<u32>(~1u, ~var_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, var_0, u_input.a.x), vec4<u32>(var_0, u_input.a.x, u_input.a.x, var_0)), 11698u), !vec4<bool>(var_1.b.x, false, true, var_1.b.x)) % vec4<u32>(32u)));
}

