struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(false, vec4<u32>(1u, 1u, 62232u, 28340u)), Struct_1(true, vec4<u32>(25909u, 1u, 4294967295u, 38219u)), Struct_1(false, vec4<u32>(1u, 46764u, 1u, 17309u)), Struct_1(true, vec4<u32>(1u, 0u, 6308u, 0u)), Struct_1(false, vec4<u32>(1u, 0u, 4294967295u, 18563u)));

var<private> global1: f32;

var<private> global2: array<bool, 12> = array<bool, 12>(true, true, true, true, false, false, true, true, false, true, false, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(941f, -404f, -1437f, -994f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(254f - 654f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-584f - -425f)))), -52947i | select(u_input.c.x, 24524i, !(arg_0.a & false)));
    let var_1 = Struct_2(~(vec2<u32>(1u, firstLeadingBit(1u)) << (arg_0.b.yz % vec2<u32>(32u))), arg_0, u_input.b.xy);
    let var_2 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(var_1.b.b, countOneBits(~vec4<u32>(arg_0.b.x, 0u, 1u, u_input.b.x))), ~(~select(4294967295u, 1u, false)), var_1.b.b.x);
    global2 = array<bool, 12>();
    global2 = array<bool, 12>();
    return abs(4294967295u);
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -568f), _wgslsmith_f_op_f32(f32(-1f) * -746f)))) - _wgslsmith_f_op_f32(round(110f)));
    var var_2 = Struct_3(abs(~(-(vec4<i32>(arg_1, -2147483647i, u_input.c.x, -2147483647i) ^ vec4<i32>(47661i, -7530i, u_input.c.x, -25159i)))), select(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.x, arg_2.b.x), min(vec2<u32>(u_input.a, arg_0.x), vec2<u32>(arg_2.b.x, arg_0.x))), _wgslsmith_add_u32(0u | arg_2.b.x, 4294967295u)), 12u)], all(select(select(vec2<bool>(true, true), vec2<bool>(true, arg_2.a), vec2<bool>(false, arg_2.a)), vec2<bool>(true, true), all(vec4<bool>(true, false, arg_2.a, global2[_wgslsmith_index_u32(35057u, 12u)])))), any(!select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 12u)], arg_2.a, global2[_wgslsmith_index_u32(4294967295u, 12u)], false), vec4<bool>(arg_2.a, global2[_wgslsmith_index_u32(arg_2.b.x, 12u)], false, true), arg_2.a))), arg_2, Struct_1(true, ~countOneBits(vec4<u32>(15097u, arg_0.x, 4294967295u, 4294967295u)) ^ abs(abs(vec4<u32>(18798u, arg_2.b.x, u_input.a, arg_2.b.x)))));
    var_0 = global2[_wgslsmith_index_u32(30752u | arg_0.x, 12u)];
    global2 = array<bool, 12>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(-814f)), 220f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1142f * 243f), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1215f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(695f, 2407f)), _wgslsmith_f_op_f32(select(1293f, 350f, true)), -116f, -912f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-428f, 705f, -125f, 146f))))), false)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1351f, 301f, -349f)))))));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(23030u, 5u)];
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-209f, -172f)) * _wgslsmith_f_op_f32(f32(-1f) * -125f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1396f, 1554f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1166f + -1000f) - -1215f), _wgslsmith_f_op_f32(-900f - -1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1332f, 1506f, 499f, -356f) * vec4<f32>(-304f, 1064f, -1864f, 502f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2265f + -312f))))), 51697i);
    var var_2 = var_1.c;
    var var_3 = Struct_3(select(-min(vec4<i32>(0i, var_1.c, 11475i, 1i) ^ vec4<i32>(-57955i, var_1.c, u_input.c.x, u_input.c.x), ~vec4<i32>(u_input.c.x, -7092i, -58387i, var_1.c)), ~firstLeadingBit(-vec4<i32>(0i, u_input.c.x, 25351i, u_input.c.x)), all(vec4<bool>(false, false, global2[_wgslsmith_index_u32(1u, 12u)] == global2[_wgslsmith_index_u32(31016u, 12u)], all(vec2<bool>(var_0.a, true))))), var_0.a, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, var_0.b.x), 5u)], global0[_wgslsmith_index_u32(1u, 5u)]);
    var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(func_4(vec3<u32>(u_input.b.x, firstLeadingBit(firstTrailingBit(1u)), func_3(Struct_1(false, vec4<u32>(4294967295u, var_0.b.x, 0u, 4294967295u)), max(-1i, 0i))), _wgslsmith_sub_i32(abs(-18545i), 0i), Struct_1(u_input.c.x <= abs(u_input.c.x), vec4<u32>(26453u, arg_0, ~var_3.d.b.x, ~var_3.c.b.x)))), -1656f, var_3.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1151f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1614f)), var_1.b))));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> vec4<u32> {
    global0 = array<Struct_1, 5>();
    var var_0 = Struct_1(true, ~_wgslsmith_div_vec4_u32(vec4<u32>(84304u, _wgslsmith_mod_u32(u_input.a, 1u), min(u_input.a, u_input.b.x), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), countOneBits(min(u_input.b, vec4<u32>(1u, 1u, u_input.a, u_input.a)))));
    let var_1 = u_input.b.yz;
    global2 = array<bool, 12>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(0u)));
    return _wgslsmith_sub_vec4_u32(vec4<u32>((var_0.b.x | 28245u) | (var_0.b.x << (4294967295u % 32u)), func_3(Struct_1(true, var_0.b), firstLeadingBit(u_input.c.x)), ~1u, u_input.b.x) << (~(~vec4<u32>(1u, 4294967295u, 38u, u_input.a)) % vec4<u32>(32u)), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_u32(u_input.b, ~(firstLeadingBit(vec4<u32>(u_input.b.x, 1505u, 1u, u_input.a)) & func_1(vec4<f32>(-458f, -1228f, 808f, 1564f), u_input.c.x | u_input.c.x)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1410f)));
    let var_1 = true;
    global1 = 462f;
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(508f + -825f), _wgslsmith_f_op_vec4_f32(func_4(vec3<u32>(43113u, 25776u, 1u), u_input.c.x, global0[_wgslsmith_index_u32(var_0.x, 5u)])).x, -233f, _wgslsmith_f_op_f32(-240f - -370f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1354f, 668f, -522f, -315f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -690f, -920f, 1000f), vec4<f32>(-1042f, -136f, -367f, -732f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-757f, -991f, 1959f, -1000f), vec4<f32>(-1000f, -654f, -837f, 851f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1434f, 425f, 1046f))))))), -831f, -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.c >> (u_input.b.xw % vec2<u32>(32u)), max(u_input.c, vec2<i32>(u_input.c.x, u_input.c.x))), u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit((-vec2<i32>(u_input.c.x, 15642i) | vec2<i32>(2147483647i, 18073i)) & u_input.c), var_2.a.ww, 1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(528f, var_2.a.x, -595f) - var_2.a.xwy)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_2.a.yxy + vec3<f32>(-461f, var_2.b, 1174f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.a.yxx, vec3<f32>(-414f, var_2.b, -2154f)) - var_2.a.xxy), !select(vec3<bool>(var_1, false, global2[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 12u)], var_1), vec3<bool>(false, false, true))))), 40649i);
}

