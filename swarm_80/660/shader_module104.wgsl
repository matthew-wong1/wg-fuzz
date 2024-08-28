struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: Struct_3,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 1>;

var<private> global1: array<Struct_4, 22>;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec2<u32>(0u, 46010u), 123f, vec4<i32>(-22723i, 43567i, 58301i, i32(-2147483648))), Struct_2(vec2<u32>(26108u, 127109u), -550f, vec4<i32>(i32(-2147483648), 31341i, -17589i, 1i)), Struct_2(vec2<u32>(14878u, 37165u), 989f, vec4<i32>(0i, -1i, -1i, 1i)), Struct_2(vec2<u32>(0u, 254u), -2301f, vec4<i32>(29442i, 2732i, -28882i, 2147483647i)), Struct_2(vec2<u32>(4294967295u, 11431u), -1291f, vec4<i32>(2147483647i, 1i, 1i, -43470i)), Struct_2(vec2<u32>(0u, 21847u), -723f, vec4<i32>(2147483647i, -6380i, i32(-2147483648), 1i)), Struct_2(vec2<u32>(4294967295u, 37896u), 388f, vec4<i32>(20912i, 0i, 37783i, 25702i)), Struct_2(vec2<u32>(18104u, 52362u), 1000f, vec4<i32>(21006i, 0i, 1300i, 36323i)), Struct_2(vec2<u32>(1u, 7119u), 1216f, vec4<i32>(-1i, -5483i, 15399i, -28299i)), Struct_2(vec2<u32>(0u, 27839u), 1428f, vec4<i32>(-27947i, 2147483647i, 63058i, i32(-2147483648))), Struct_2(vec2<u32>(28338u, 29648u), -1000f, vec4<i32>(1i, -30159i, 2147483647i, i32(-2147483648))), Struct_2(vec2<u32>(1u, 0u), 104f, vec4<i32>(0i, 1i, 15392i, 0i)), Struct_2(vec2<u32>(26992u, 4294967295u), 699f, vec4<i32>(1i, -17162i, -1i, 1i)), Struct_2(vec2<u32>(0u, 0u), -392f, vec4<i32>(2147483647i, -48969i, 40910i, 0i)), Struct_2(vec2<u32>(21789u, 0u), 2051f, vec4<i32>(17033i, -49763i, 78760i, 21887i)), Struct_2(vec2<u32>(50803u, 16383u), 848f, vec4<i32>(38650i, -1i, -33011i, 2147483647i)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: Struct_5, arg_3: i32) -> vec4<f32> {
    let var_0 = max(vec3<i32>(_wgslsmith_dot_vec4_i32(arg_2.d.a, vec4<i32>(-u_input.a, arg_0.d.a.x, -1i, abs(arg_0.d.a.x))), select(_wgslsmith_mod_i32(min(-34056i, u_input.b), firstTrailingBit(arg_3)), -(arg_3 >> (39869u % 32u)), true), select(arg_2.d.d.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.b, arg_0.b), arg_2.d.a.zz), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_3, arg_3), arg_2.d.a.xy, arg_0.d.a.wy)), true)), ~max(vec3<i32>(u_input.a, 51368i, _wgslsmith_mod_i32(arg_0.d.d.x, arg_2.b)), vec3<i32>(_wgslsmith_clamp_i32(1i, -35791i, 53356i), arg_3, -18668i)));
    global0 = array<vec2<bool>, 1>();
    global0 = array<vec2<bool>, 1>();
    let var_1 = Struct_2(~(~(~(~vec2<u32>(4294967295u, arg_1)))), -355f, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(-(~vec4<i32>(-2147483647i, var_0.x, 2147483647i, u_input.b)), arg_0.d.a), vec4<i32>(arg_3, abs(~1i), -2147483647i, 1i)));
    global2 = array<Struct_2, 16>();
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.c.x)), 269f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a.x - var_1.b)))), _wgslsmith_f_op_f32(floor(1295f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(arg_2.d.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_0.d.c - vec4<f32>(arg_0.a.x, var_1.b, 1038f, 835f))))))));
}

fn func_2() -> u32 {
    global2 = array<Struct_2, 16>();
    let var_0 = true;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2598f, -1000f, 153f, 328f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(vec3<f32>(-635f, 1502f, 962f), u_input.b, vec3<f32>(922f, 787f, 562f), Struct_3(vec4<i32>(-28686i, 2147483647i, 1i, u_input.a), -745f, vec4<f32>(-732f, 232f, 1000f, -1000f), vec4<i32>(u_input.a, u_input.a, u_input.a, -48606i)), vec2<bool>(false, true)), 48295u, Struct_5(vec3<f32>(446f, 1043f, -608f), -33021i, vec3<f32>(478f, 861f, -483f), Struct_3(vec4<i32>(u_input.b, -2147483647i, u_input.b, -2147483647i), -1257f, vec4<f32>(2234f, 2353f, -667f, -706f), vec4<i32>(1309i, 2147483647i, 522i, u_input.b)), vec2<bool>(var_0, var_0)), -1i)), vec4<f32>(1000f, -2098f, -746f, -1639f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-936f, 1990f, -735f, -304f) - vec4<f32>(-2430f, -486f, 1418f, 1255f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1537f, 992f, -635f, -404f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-839f, -507f, -656f, 367f)))))))), vec4<f32>(-172f, _wgslsmith_f_op_f32(1334f + _wgslsmith_f_op_f32(528f - 166f)), _wgslsmith_div_f32(301f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(2842f, 1547f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f))))));
    let var_2 = global1[_wgslsmith_index_u32(4947u, 22u)];
    let var_3 = vec4<bool>(true, var_0, true, false);
    return var_2.b;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: vec2<i32>) -> Struct_2 {
    global0 = array<vec2<bool>, 1>();
    var var_0 = vec4<u32>(31623u << (~(_wgslsmith_dot_vec3_u32(vec3<u32>(13772u, 4294967295u, 76496u), vec3<u32>(15405u, 16142u, 46821u)) << (25036u % 32u)) % 32u), _wgslsmith_div_u32(1u, 1u) ^ firstLeadingBit(~func_2()), ~(~80542u), ~(~1u));
    var var_1 = _wgslsmith_f_op_f32(-arg_1.a.x);
    let var_2 = true;
    var var_3 = select(min(~(~select(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x), vec4<bool>(var_2, arg_0.x, true, true))), _wgslsmith_mult_vec4_u32(firstTrailingBit(reverseBits(vec4<u32>(var_0.x, var_0.x, 47888u, 4294967295u))), abs(vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x)) << (reverseBits(vec4<u32>(var_0.x, var_0.x, var_0.x, 0u)) % vec4<u32>(32u)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(26332u, 72927u, 0u, var_0.x), vec4<u32>(var_0.x, 0u, var_0.x, 4294967295u)), var_0.x, 1u, ~4294967295u), ~select(vec4<u32>(1u, 4294967295u, 68058u, 1u), vec4<u32>(var_0.x, 10214u, 0u, 1u), false), _wgslsmith_div_vec4_u32(abs(vec4<u32>(var_0.x, 1u, 8491u, var_0.x)), max(vec4<u32>(0u, 4294967295u, 4294967295u, var_0.x), vec4<u32>(56387u, 4294967295u, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(526f, _wgslsmith_div_f32(arg_1.d.b, 738f))))) == _wgslsmith_f_op_f32(396f + 965f));
    return Struct_2(vec2<u32>(~60898u & max(~var_3.x, var_0.x), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.c.x)) - _wgslsmith_div_f32(arg_1.d.b, _wgslsmith_f_op_f32(arg_1.c.x - 1000f))) * _wgslsmith_f_op_f32(-271f * arg_1.c.x)), ~_wgslsmith_mult_vec4_i32(abs(select(arg_1.d.a, arg_1.d.a, vec4<bool>(true, true, arg_1.e.x, arg_0.x))), min(arg_1.d.d, ~arg_1.d.d)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> Struct_5 {
    var var_0 = reverseBits(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -23637i, -5015i, 1i), arg_0.c)) | arg_0.c) & reverseBits(vec4<i32>(reverseBits(u_input.a | 2147483647i), ~abs(arg_0.c.x), arg_0.c.x, ~countOneBits(arg_0.c.x)));
    var var_1 = global1[_wgslsmith_index_u32(50280u, 22u)];
    let var_2 = global1[_wgslsmith_index_u32(var_1.b, 22u)];
    return Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(434f - 1715f), _wgslsmith_f_op_f32(trunc(arg_0.b)))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.b, var_2.a.b, -1281f)))), -14015i, var_1.a.c.xxz, Struct_3(vec4<i32>(select(var_0.x, -1i & var_2.a.d.x, true), u_input.b, -_wgslsmith_add_i32(u_input.a, arg_0.c.x), ~_wgslsmith_mod_i32(u_input.b, -32370i)), arg_1, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(var_2.a.c)))), abs(abs(~vec4<i32>(u_input.a, -57618i, 1i, arg_0.c.x)))), vec2<bool>(arg_0.a.x == abs(~var_2.b), reverseBits(func_1(global0[_wgslsmith_index_u32(var_2.b, 1u)], Struct_5(vec3<f32>(-561f, 1257f, arg_0.b), 46824i, var_1.a.c.zyz, Struct_3(var_2.a.d, var_1.a.b, var_1.a.c, arg_0.c), vec2<bool>(true, true)), var_2.a.a.zx).c.x) != arg_0.c.x));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4) -> f32 {
    var var_0 = arg_1.b | arg_1.b;
    var var_1 = _wgslsmith_div_u32(arg_1.b, _wgslsmith_sub_u32(~firstLeadingBit(~arg_1.b), ~(~4294967295u) ^ ~arg_1.b));
    var var_2 = select(select(!vec4<bool>(!arg_0.e.x, all(vec3<bool>(arg_0.e.x, false, arg_0.e.x)), arg_0.e.x | true, any(vec4<bool>(arg_0.e.x, arg_0.e.x, true, arg_0.e.x))), select(vec4<bool>(0u > arg_1.b, true, all(arg_0.e), !arg_0.e.x), vec4<bool>(true, any(vec3<bool>(arg_0.e.x, true, arg_0.e.x)), arg_0.e.x, true), select(!vec4<bool>(arg_0.e.x, arg_0.e.x, true, arg_0.e.x), vec4<bool>(arg_0.e.x, arg_0.e.x, true, true), all(vec2<bool>(arg_0.e.x, arg_0.e.x)))), true), !vec4<bool>(!any(global0[_wgslsmith_index_u32(arg_1.b, 1u)]), !arg_0.e.x, arg_0.e.x || (arg_0.c.x == arg_1.a.b), false), select(vec4<bool>(arg_0.e.x, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.e.x != false, all(arg_0.e), arg_0.e.x, arg_1.b >= arg_1.b), select(!vec4<bool>(true, true, true, arg_0.e.x), !vec4<bool>(true, true, arg_0.e.x, arg_0.e.x), arg_0.e.x | true)), false));
    var_2 = vec4<bool>(var_2.x && true, !any(vec2<bool>(true, func_4(Struct_2(vec2<u32>(arg_1.b, 15105u), 239f, vec4<i32>(u_input.a, arg_1.a.a.x, -25317i, 20470i)), arg_0.a.x, 1353f).e.x)), !(var_2.x & !(!arg_0.e.x)), true);
    global0 = array<vec2<bool>, 1>();
    return _wgslsmith_f_op_f32(-arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(func_1(global0[_wgslsmith_index_u32(1u, 1u)], Struct_5(vec3<f32>(-836f, 1596f, -276f), -16300i, vec3<f32>(-895f, -2002f, 143f), Struct_3(vec4<i32>(u_input.b, -1i, -20239i, u_input.b), 594f, vec4<f32>(1706f, -271f, -539f, 1673f), vec4<i32>(-35448i, 32101i, 4319i, u_input.b)), global0[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_f_op_f32(-1000f - 763f), _wgslsmith_f_op_f32(f32(-1f) * -429f)), global1[_wgslsmith_index_u32(~(~1u), 22u)])) * func_1(vec2<bool>(true, true), Struct_5(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(vec3<f32>(-390f, -1959f, 839f), 4100i, vec3<f32>(-379f, 1656f, -257f), Struct_3(vec4<i32>(u_input.a, u_input.b, -2147483647i, -1i), -1443f, vec4<f32>(-603f, -1000f, -319f, -483f), vec4<i32>(1i, u_input.b, -2147483647i, u_input.a)), vec2<bool>(false, false)), 4294967295u, Struct_5(vec3<f32>(-410f, 2525f, 795f), 25944i, vec3<f32>(-551f, 782f, -1230f), Struct_3(vec4<i32>(u_input.b, 22845i, -79327i, u_input.a), 638f, vec4<f32>(-1541f, -1000f, 1309f, 774f), vec4<i32>(u_input.a, u_input.a, -2147483647i, -2147483647i)), global0[_wgslsmith_index_u32(37564u, 1u)]), u_input.b)).xzx, _wgslsmith_sub_i32(37677i, -28433i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(387f, -2946f, -1059f)), Struct_3(vec4<i32>(u_input.a, u_input.a, -1i, 1i), -228f, vec4<f32>(293f, 734f, -378f, -1000f), vec4<i32>(1i, u_input.b, u_input.b, u_input.b)), select(global0[_wgslsmith_index_u32(47795u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(15903u, 1u)])), -firstLeadingBit(vec2<i32>(u_input.a, u_input.a))).b) == 197f;
    let var_1 = -2630f;
    global1 = array<Struct_4, 22>();
    var_0 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(723f, _wgslsmith_f_op_f32(sign(143f))))), _wgslsmith_clamp_u32(29273u, 1u, _wgslsmith_sub_u32(9953u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 52586u, 0u, 0u), vec4<u32>(45191u, 23754u, 14902u, 8386u)), reverseBits(vec4<u32>(63281u, 1u, 4294967295u, 0u))))), vec2<i32>(min(1i, -10291i), 15506i), u_input.b, _wgslsmith_f_op_f32(var_1 - 1082f));
    global0 = array<vec2<bool>, 1>();
    global2 = array<Struct_2, 16>();
    let var_3 = !select(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), !any(vec3<bool>(false, false, false))), vec3<bool>(-1000f >= var_1, ~31351u == firstTrailingBit(var_2.b), any(vec4<bool>(true, true, true, false))), !any(vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-max(_wgslsmith_mod_i32(-1i, var_2.d), 0i), reverseBits((2147483647i >> (var_2.b % 32u)) | u_input.b)));
}

