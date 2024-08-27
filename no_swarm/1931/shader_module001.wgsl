struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<Struct_2, 30>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_2) -> i32 {
    let var_0 = !(!vec4<bool>(select(all(vec4<bool>(arg_0.b.a.x, true, arg_0.b.a.x, false)), !arg_0.b.a.x, arg_0.a.x <= 4294967295u), arg_0.b.a.x, false, arg_0.b.a.x));
    let var_1 = all(var_0.xzw);
    var var_2 = -firstTrailingBit(countOneBits(4687i) ^ _wgslsmith_mult_i32(_wgslsmith_mod_i32(-46953i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-65907i, u_input.a.x), vec2<i32>(11732i, arg_0.b.b.x))));
    let var_3 = arg_0.b.b.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-220f, 2174f, -1132f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(1227f, -657f, 349f)))));
    return _wgslsmith_mult_i32(arg_0.b.b.x, arg_0.b.b.x);
}

fn func_3(arg_0: vec3<i32>) -> Struct_1 {
    global0 = array<Struct_2, 30>();
    let var_0 = Struct_2(_wgslsmith_add_vec4_u32(~(~(~vec4<u32>(0u, 0u, 0u, 0u))), reverseBits(vec4<u32>(1u, 1u, 1u, 1u)) | (vec4<u32>(1u, 1u, 1u, 1u) >> (select(vec4<u32>(4540u, 17314u, 31040u, 17763u), vec4<u32>(70147u, 0u, 1u, 4294967295u), vec4<bool>(false, false, true, true)) % vec4<u32>(32u)))), Struct_1(!vec3<bool>(true, true, any(vec4<bool>(true, true, false, false))), u_input.a.zx));
    var var_1 = reverseBits(_wgslsmith_add_vec3_i32(u_input.a.yxz, vec3<i32>(-_wgslsmith_add_i32(u_input.a.x, 2147483647i), ~u_input.a.x, abs(_wgslsmith_mult_i32(-1i, arg_0.x)))));
    var_1 = firstLeadingBit(~vec3<i32>(-80719i, arg_0.x, u_input.a.x)) | firstTrailingBit(~(-(arg_0 >> (var_0.a.zzx % vec3<u32>(32u)))));
    let var_2 = vec4<bool>(!var_0.b.a.x, false, all(vec3<bool>(true, true, true)) || var_0.b.a.x, all(select(vec2<bool>(false, all(var_0.b.a.xy)), select(var_0.b.a.xz, !vec2<bool>(var_0.b.a.x, var_0.b.a.x), select(var_0.b.a.xy, vec2<bool>(true, var_0.b.a.x), var_0.b.a.x)), vec2<bool>(true, var_0.b.a.x | var_0.b.a.x))));
    return var_0.b;
}

fn func_1() -> Struct_2 {
    var var_0 = func_3(vec3<i32>(u_input.a.x, ~1i, func_2(global0[_wgslsmith_index_u32(~firstTrailingBit(9719u), 30u)])));
    var var_1 = u_input.a.yzw;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(476f, -2415f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1051f + 1053f))), _wgslsmith_f_op_f32(-1571f + _wgslsmith_f_op_f32(f32(-1f) * -954f)))), _wgslsmith_f_op_f32(-308f + -629f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(849f - -447f))));
    var var_3 = Struct_1(select(select(!select(var_0.a, vec3<bool>(var_0.a.x, false, var_0.a.x), true), select(var_0.a, func_3(vec3<i32>(0i, 47584i, 1i)).a, var_0.a), any(var_0.a) || true), var_0.a, vec3<bool>(!var_0.a.x & true, !var_0.a.x, false)), abs(u_input.a.ww));
    var var_4 = u_input.a;
    return Struct_2(~(~(~(~vec4<u32>(30992u, 4294967295u, 30930u, 119209u)))), func_3(var_4.xyy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, ~u_input.a.x, -29474i ^ var_0.b.b.x), u_input.a.zzz);
    var var_2 = var_0.a.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1043f, -328f, 1000f, -264f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(434f, 895f, -777f, -405f), vec4<f32>(1270f, 496f, 690f, 376f), vec4<bool>(true, false, var_0.b.a.x, true)))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(126f, 1000f, -1252f, 1000f))))))));
    let var_4 = _wgslsmith_f_op_f32(-var_3.x);
    var var_5 = vec4<f32>(var_4, -900f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4)))))), _wgslsmith_div_f32(1172f, var_3.x));
    var var_6 = min(firstLeadingBit(~vec3<u32>(_wgslsmith_div_u32(19205u, 4294967295u), var_0.a.x ^ 19425u, var_0.a.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(~var_0.a.x, _wgslsmith_sub_u32(var_0.a.x, 4294967295u), 4294967295u), ~vec3<u32>(var_0.a.x, 102832u, 45115u)) | ~(~max(var_0.a.xxx, var_0.a.xwz)));
    let var_7 = ~_wgslsmith_dot_vec4_i32(reverseBits(u_input.a), u_input.a);
    let var_8 = -702f;
    let x = u_input.a;
    s_output = StorageBuffer(46088u);
}

