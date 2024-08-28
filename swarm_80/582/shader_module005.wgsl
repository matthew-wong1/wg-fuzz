struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: bool,
    d: i32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30>;

var<private> global1: vec4<f32>;

var<private> global2: array<i32, 11>;

var<private> global3: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(-972f, 2152f, 1174f, 1265f), vec4<f32>(-1000f, 831f, -192f, 1000f), vec4<f32>(377f, -1000f, 1577f, -451f), vec4<f32>(-624f, 744f, 1000f, 661f), vec4<f32>(-1657f, 778f, -1652f, -1913f), vec4<f32>(-1032f, -147f, -767f, -294f), vec4<f32>(694f, 2452f, -1044f, 1000f), vec4<f32>(118f, -1636f, -331f, -596f), vec4<f32>(1471f, 950f, -296f, -1083f), vec4<f32>(-2256f, 206f, -902f, -1000f), vec4<f32>(561f, 1143f, -1000f, 163f), vec4<f32>(595f, 799f, 910f, -475f), vec4<f32>(401f, -711f, 610f, 2255f), vec4<f32>(-1045f, 850f, -652f, 470f), vec4<f32>(549f, 761f, -639f, 886f), vec4<f32>(-1073f, 1452f, 280f, -1122f), vec4<f32>(-1278f, 512f, -444f, -533f), vec4<f32>(517f, -1000f, 149f, -1750f), vec4<f32>(2339f, -621f, -296f, -565f), vec4<f32>(757f, 1146f, 1164f, -2229f), vec4<f32>(287f, -477f, 206f, 1624f), vec4<f32>(-776f, 845f, 3409f, -709f), vec4<f32>(341f, -649f, -1596f, -987f), vec4<f32>(-2047f, -315f, 378f, -364f), vec4<f32>(1625f, -641f, 1359f, 2532f), vec4<f32>(-1752f, 609f, 1873f, 195f), vec4<f32>(1472f, 764f, 888f, 646f), vec4<f32>(-167f, 774f, -1634f, -671f));

var<private> global4: vec2<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> u32 {
    let var_0 = -_wgslsmith_div_i32(-8758i, _wgslsmith_mod_i32(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(global4.x, 11u)], 0i), -26734i) & global2[_wgslsmith_index_u32(15409u, 11u)]);
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, u_input.a.x), u_input.a << (vec2<u32>(u_input.a.x, 898u) % vec2<u32>(32u))) << (~4294967295u % 32u), u_input.a.x, ~57422u), 11u)], arg_0.b);
    let var_2 = vec4<i32>(_wgslsmith_add_i32(max(_wgslsmith_clamp_i32(1i, arg_0.a | global2[_wgslsmith_index_u32(39986u, 11u)], select(var_1.a, global2[_wgslsmith_index_u32(u_input.a.x, 11u)], var_1.b.a)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(global2[_wgslsmith_index_u32(global4.x, 11u)], 1i), vec2<i32>(arg_0.a, -1759i), vec2<bool>(false, arg_1)), vec2<i32>(arg_0.a, 0i))), var_0), 1830i, max(countOneBits(var_1.a), _wgslsmith_div_i32(1i, arg_0.a | var_0)), var_0);
    let var_3 = Struct_1(arg_2);
    let var_4 = false;
    return 23640u;
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(global1.ww));
    let var_1 = vec2<u32>(1u ^ ~select(80864u, min(u_input.a.x, 7055u), true), firstTrailingBit(26560u));
    var var_2 = _wgslsmith_mod_i32(-2147483647i, global2[_wgslsmith_index_u32(func_3(Struct_2(1i, Struct_1(any(vec4<bool>(true, false, false, true)))), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true))), true), 11u)]);
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-796f - var_0.x), _wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -396f, var_0.x)))));
    var var_4 = vec2<u32>(abs(4294967295u) | firstTrailingBit(min(global4.x, 72627u)), abs(~(~var_1.x)));
    return Struct_4(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), global1.x), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)), !(_wgslsmith_f_op_f32(2218f + -760f) != _wgslsmith_f_op_f32(global1.x * 159f)), 41354i, vec4<bool>(true, true, true, true)), ~(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 76032u, u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, 70177u), vec3<u32>(var_4.x, 0u, global4.x))) & _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_4.x, var_1.x), vec3<u32>(1u, 36123u, global4.x)), vec3<u32>(4294967295u, 0u, var_1.x), firstTrailingBit(vec3<u32>(var_1.x, 8215u, var_4.x)))));
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4) -> vec2<bool> {
    let var_0 = func_2();
    global0 = array<Struct_4, 30>();
    var var_1 = global1.xyz;
    let var_2 = func_2().a;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.xy) + _wgslsmith_f_op_vec2_f32(var_2.a + vec2<f32>(397f, var_2.a.x))))));
    return var_2.e.yz;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(615f * -296f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>((-297f != global1.x) || any(vec2<bool>(false, true)), true, select(true, false, false) && all(vec3<bool>(true, true, true))));
    let var_1 = vec3<bool>(any(!vec3<bool>(true, select(true, var_0.x, false), true)), select(all(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, true, var_0.x))) && !any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(662f, global1.x)) + _wgslsmith_f_op_f32(-global1.x)) > _wgslsmith_f_op_f32(func_4(func_1(52212i, global0[_wgslsmith_index_u32(45807u, 30u)], Struct_4(Struct_3(vec2<f32>(-325f, global1.x), var_0.zx, var_0.x, global2[_wgslsmith_index_u32(u_input.a.x, 11u)], vec4<bool>(false, false, var_0.x, var_0.x)), vec3<u32>(u_input.a.x, global4.x, u_input.a.x))), firstLeadingBit(global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec3<u32>(u_input.a.x, 0u, global4.x) >> (vec3<u32>(global4.x, 11614u, 1u) % vec3<u32>(32u)), Struct_3(global1.wy, var_0.zz, false, -64671i, vec4<bool>(false, false, true, var_0.x)))), var_0.x), var_0.x);
    var var_2 = !all(vec3<bool>(var_1.x, true, true));
    var var_3 = select(~0u, firstLeadingBit(~func_3(Struct_2(global2[_wgslsmith_index_u32(global4.x, 11u)], Struct_1(true)), var_0.x, var_0.x)), global1.x >= func_2().a.a.x) | ~(~53424u);
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.xx), _wgslsmith_f_op_vec2_f32(round(global1.zy))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + global1.xy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), var_1.zz))))), select(!var_0.xx, !var_1.xz, func_1(~(-2147483647i), func_2(), global0[_wgslsmith_index_u32(abs(max(4294967295u, 14395u)), 30u)])), var_1.x, firstLeadingBit(global2[_wgslsmith_index_u32(global4.x | global4.x, 11u)]), vec4<bool>(true, !(!var_1.x), !(var_1.x | !var_1.x), true));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a.x - global1.x) + _wgslsmith_f_op_f32(-var_4.a.x)))) - -360f);
    var var_6 = vec2<bool>((var_4.c | var_1.x) == true, true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_sub_vec2_u32(u_input.a, ~countOneBits(func_2().b.xy)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(u_input.a.x, 28u)] * vec4<f32>(var_4.a.x, 759f, global1.x, -128f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(global4.x, 28u)]))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 792f, 1878f, 1613f)))))), var_4.d);
}

