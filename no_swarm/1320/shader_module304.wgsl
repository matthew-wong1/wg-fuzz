struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(-102f, vec3<bool>(false, false, false), vec2<i32>(1i, 39426i), vec2<u32>(1u, 57769u), vec4<u32>(0u, 53488u, 33177u, 9087u)), Struct_1(200f, vec3<bool>(true, true, true), vec2<i32>(-13602i, -1i), vec2<u32>(426u, 10096u), vec4<u32>(4294967295u, 0u, 0u, 1u)), Struct_1(-2688f, vec3<bool>(true, true, false), vec2<i32>(-20764i, -1i), vec2<u32>(4294967295u, 1u), vec4<u32>(4294967295u, 14845u, 4294967295u, 1u)), Struct_1(-1000f, vec3<bool>(false, false, false), vec2<i32>(-21627i, 3754i), vec2<u32>(1u, 9442u), vec4<u32>(17734u, 4294967295u, 33910u, 17501u)), Struct_1(-1393f, vec3<bool>(true, false, false), vec2<i32>(-1i, i32(-2147483648)), vec2<u32>(13163u, 63504u), vec4<u32>(58781u, 1u, 0u, 59963u)), Struct_1(-714f, vec3<bool>(true, true, false), vec2<i32>(80246i, 10228i), vec2<u32>(4294967295u, 56082u), vec4<u32>(42673u, 1u, 34807u, 15025u)), Struct_1(1000f, vec3<bool>(true, true, false), vec2<i32>(0i, 68355i), vec2<u32>(1u, 9644u), vec4<u32>(11608u, 58746u, 157u, 29323u)), Struct_1(-711f, vec3<bool>(true, false, true), vec2<i32>(-1i, 0i), vec2<u32>(49115u, 4294967295u), vec4<u32>(1u, 29032u, 0u, 0u)), Struct_1(-1000f, vec3<bool>(false, true, true), vec2<i32>(0i, i32(-2147483648)), vec2<u32>(0u, 12200u), vec4<u32>(31085u, 38537u, 1u, 47320u)), Struct_1(822f, vec3<bool>(false, true, false), vec2<i32>(2147483647i, i32(-2147483648)), vec2<u32>(36994u, 4294967295u), vec4<u32>(1u, 0u, 11619u, 115571u)), Struct_1(-1458f, vec3<bool>(true, true, false), vec2<i32>(63779i, 1i), vec2<u32>(0u, 0u), vec4<u32>(3012u, 4294967295u, 1u, 37001u)), Struct_1(248f, vec3<bool>(false, false, true), vec2<i32>(37661i, 0i), vec2<u32>(9061u, 25299u), vec4<u32>(0u, 29528u, 1323u, 4294967295u)), Struct_1(-178f, vec3<bool>(false, true, true), vec2<i32>(-38661i, -1i), vec2<u32>(16946u, 19787u), vec4<u32>(17115u, 0u, 1u, 1u)), Struct_1(-694f, vec3<bool>(true, true, false), vec2<i32>(13908i, 1i), vec2<u32>(1u, 8788u), vec4<u32>(1u, 92148u, 4294967295u, 1u)), Struct_1(536f, vec3<bool>(true, true, true), vec2<i32>(1i, 58962i), vec2<u32>(0u, 17248u), vec4<u32>(4294967295u, 29418u, 19597u, 1u)), Struct_1(-882f, vec3<bool>(true, false, true), vec2<i32>(-19342i, 43272i), vec2<u32>(8566u, 20987u), vec4<u32>(1u, 28430u, 72834u, 0u)), Struct_1(-2114f, vec3<bool>(true, true, true), vec2<i32>(35475i, i32(-2147483648)), vec2<u32>(59159u, 51755u), vec4<u32>(14567u, 1u, 1u, 79221u)), Struct_1(-122f, vec3<bool>(true, false, false), vec2<i32>(39790i, -43187i), vec2<u32>(35644u, 13188u), vec4<u32>(4210u, 19320u, 4294967295u, 0u)), Struct_1(-1396f, vec3<bool>(true, true, true), vec2<i32>(-46820i, -3214i), vec2<u32>(63090u, 74468u), vec4<u32>(1u, 4294967295u, 0u, 15648u)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 19u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, var_0.b.x)))), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-467f + var_0.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(350f)) + _wgslsmith_f_op_f32(max(var_0.a, var_0.a)))), _wgslsmith_f_op_f32(748f - _wgslsmith_f_op_f32(-var_0.a))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-352f, _wgslsmith_f_op_f32(step(1041f, -414f)), 2380f, -1000f)));
    var_1 = vec4<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(var_0.a + -519f)))), 324f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-521f, 672f)), -366f)));
    let var_2 = global0[_wgslsmith_index_u32(var_0.d.x, 19u)];
    let var_3 = abs(-u_input.c);
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-29322i, 3077i), min(firstTrailingBit(var_2.c), reverseBits(var_3.yx)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: u32) -> Struct_1 {
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 1399f))) - arg_1), !select(select(!vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, false, arg_0)), vec3<bool>(true, true, true), vec3<bool>(u_input.a >= u_input.c.x, false, all(vec3<bool>(true, true, true)))), vec2<i32>(-min(-u_input.c.x, 1i), u_input.a), _wgslsmith_add_vec2_u32(~(~vec2<u32>(arg_2, arg_2) & _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 48315u), vec2<u32>(45022u, 12017u))), ~(~(~vec2<u32>(19u, arg_2)))), ~(~reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2, 0u, 1u, 7556u), vec4<u32>(1u, arg_2, arg_3, arg_2)))));
    global0 = array<Struct_1, 19>();
    var var_1 = vec4<bool>(!var_0.b.x, (i32(-1i) * -func_2()) <= -2147483647i, !all(vec3<bool>(true, true, all(vec3<bool>(true, false, false)))), any(vec4<bool>(true, arg_1 < 621f, var_0.b.x, true == (arg_1 != -135f))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1201f)), !var_0.b, ~max(vec2<i32>(u_input.c.x, abs(0i)), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 34439i), vec2<i32>(u_input.a, 50040i)), ~vec2<i32>(u_input.c.x, -1i))), reverseBits(~((vec2<u32>(arg_2, 4294967295u) >> (vec2<u32>(10587u, arg_3) % vec2<u32>(32u))) << (firstLeadingBit(var_0.e.zw) % vec2<u32>(32u)))), ~vec4<u32>(reverseBits(arg_2), ~5505u, u_input.b, ~60423u) >> (var_0.e % vec4<u32>(32u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: f32) -> vec3<f32> {
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(626f * -410f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1376f, -1000f)))), _wgslsmith_f_op_f32(-1588f * 791f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -262f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -1131f, -839f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(751f, arg_2.a, -1823f), vec3<f32>(arg_3, arg_2.a, -458f), true))), vec3<f32>(1f, -118f, arg_2.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, 1i, u_input.a), vec4<i32>(u_input.c.x, -1058i, u_input.c.x, -1i))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(func_1(true, 901f, 35938u, 4294967295u), -u_input.c, global0[_wgslsmith_index_u32(~u_input.b, 19u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
}

