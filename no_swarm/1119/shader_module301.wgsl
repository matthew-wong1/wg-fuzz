struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec3<u32>(0u, 15777u, 39247u)), Struct_3(vec3<u32>(10337u, 1u, 46583u)), Struct_3(vec3<u32>(1u, 293u, 11610u)), Struct_3(vec3<u32>(32431u, 0u, 86412u)), Struct_3(vec3<u32>(1u, 105102u, 4294967295u)), Struct_3(vec3<u32>(1u, 0u, 0u)), Struct_3(vec3<u32>(0u, 15747u, 36756u)), Struct_3(vec3<u32>(50308u, 58479u, 0u)), Struct_3(vec3<u32>(16402u, 4294967295u, 59850u)), Struct_3(vec3<u32>(36102u, 70650u, 94320u)), Struct_3(vec3<u32>(5563u, 23858u, 44223u)), Struct_3(vec3<u32>(84180u, 15929u, 70686u)), Struct_3(vec3<u32>(1u, 4294967295u, 97161u)), Struct_3(vec3<u32>(1u, 50758u, 1u)), Struct_3(vec3<u32>(9860u, 6465u, 44172u)), Struct_3(vec3<u32>(1u, 4294967295u, 1u)), Struct_3(vec3<u32>(4294967295u, 1u, 19781u)), Struct_3(vec3<u32>(1u, 4294967295u, 30488u)), Struct_3(vec3<u32>(1u, 18004u, 4294967295u)), Struct_3(vec3<u32>(4294967295u, 53643u, 66462u)), Struct_3(vec3<u32>(92746u, 0u, 12491u)), Struct_3(vec3<u32>(39498u, 7190u, 0u)), Struct_3(vec3<u32>(4871u, 72045u, 4294967295u)), Struct_3(vec3<u32>(32243u, 1u, 4294967295u)));

var<private> global1: array<vec3<u32>, 8>;

var<private> global2: array<vec2<i32>, 18>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<f32>) -> vec4<f32> {
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-952f, arg_0.x, arg_0.x, -1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) - vec4<f32>(1716f, 1715f, 606f, -850f))) * vec4<f32>(_wgslsmith_f_op_f32(-356f * 842f), 1f, -327f, 1303f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x * arg_0.x))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-132f + -1283f) - arg_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-658f - arg_0.x))), arg_0.x)), arg_0.x));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1696f * 219f), _wgslsmith_f_op_f32(ceil(-1394f)), -1146f, 962f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(-1119f, -511f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-128f, -205f, 711f, -1000f)))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1688f, -1620f, 786f, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1213f, 292f, -467f, -2345f)))))));
    let var_1 = firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-8318i, -1280i)), -global2[_wgslsmith_index_u32(4294967295u, 18u)]), 1i) ^ reverseBits(-vec2<i32>(1i, -1i)));
    var var_2 = var_1.x;
    var var_3 = true;
    var var_4 = Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.zwy)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xw) - _wgslsmith_f_op_vec2_f32(var_0.zy * var_0.yy)), ~(~(~18158u))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(421f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(var_0.ww)).x)), false))));
    return global0[_wgslsmith_index_u32(var_4.a.c, 24u)];
}

fn func_4(arg_0: Struct_3) -> bool {
    let var_0 = true;
    var var_1 = Struct_5(Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(-560f, -406f, _wgslsmith_f_op_f32(f32(-1f) * -381f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-716f, 675f, -1864f), vec3<f32>(580f, -1000f, -310f), vec3<bool>(var_0, var_0, true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1049f, 466f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1052f)))) * _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(476f, 806f), vec2<f32>(-786f, -1000f)))).zz), 4294967295u), !all(vec2<bool>(false, all(vec2<bool>(false, var_0)))), 380f);
    var_1 = Struct_5(var_1.a, true, -1017f);
    var var_2 = _wgslsmith_sub_i32(1i, 1i);
    var var_3 = Struct_4(~vec4<u32>(~arg_0.a.x, 4294967295u, var_1.a.c, 34327u), arg_0, Struct_2(_wgslsmith_f_op_vec3_f32(var_1.a.a * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(var_1.a.a))))), _wgslsmith_f_op_vec2_f32(var_1.a.b - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(258f, var_1.c), var_1.a.b))), 0u));
    return var_1.b;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: f32, arg_3: vec3<i32>) -> vec3<f32> {
    var var_0 = all(vec3<bool>(true, false, !any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(arg_2 - 216f))) - 1f) - -525f)));
    let var_2 = vec3<bool>(func_4(func_2()), true, true);
    global1 = array<vec3<u32>, 8>();
    var var_3 = _wgslsmith_mult_vec3_i32(~abs(~vec3<i32>(arg_3.x, -9847i, arg_3.x)), vec3<i32>(min(arg_3.x << (~29963u % 32u), arg_3.x), ~arg_3.x, arg_1.x));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-979f, var_1, -1254f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 1987f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1 - 645f), _wgslsmith_f_op_f32(1117f + -1920f), _wgslsmith_f_op_f32(983f - -1123f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1305f), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(f32(-1f) * -387f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2367f, -1045f, arg_2), vec3<f32>(arg_2, arg_2, var_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 18>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1420f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1632f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_vec3_f32(func_1(abs(vec4<u32>(10941u, u_input.a.x, u_input.e.x, 4294967295u)), vec3<i32>(firstLeadingBit(40040i), 2147483647i, 1i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -166f))), -firstTrailingBit(vec3<i32>(2147483647i, -29882i, -7034i))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(485f, 746f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-811f, 1702f), vec2<f32>(-973f, -311f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -154f), _wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(838f, 1264f))).x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1889f, -1055f))))), 10155u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.x, -805f, 2114f, -2200f))), vec4<f32>(-1000f, 250f, -132f, var_0.a.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x - -1470f), 373f) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), -1161f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1815f)))));
    global2 = array<vec2<i32>, 18>();
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_1.zzx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(464f, var_1.x, -859f)))));
    let var_3 = !(_wgslsmith_f_op_f32(-var_2.x) > var_1.x) || true;
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(var_1.xzw * _wgslsmith_div_vec3_f32(vec3<f32>(300f, 1327f, _wgslsmith_f_op_vec4_f32(func_3(var_0.b)).x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(605f, 1134f, var_1.x) + vec3<f32>(var_0.b.x, 1075f, -1000f))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-699f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1032f, 605f))))), 11292u);
    global0 = array<Struct_3, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_1));
}

