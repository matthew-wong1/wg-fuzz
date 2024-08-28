struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -8893i;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<f32>(259f, -669f, 758f, -837f), vec4<u32>(4294967295u, 4294967295u, 1u, 10348u), 1u, vec4<bool>(true, false, false, true), false), Struct_1(vec4<f32>(-1000f, 161f, -1790f, -825f), vec4<u32>(0u, 0u, 4294967295u, 0u), 10541u, vec4<bool>(false, true, true, false), false), Struct_1(vec4<f32>(-493f, 336f, -374f, 1438f), vec4<u32>(39u, 14164u, 37343u, 0u), 46195u, vec4<bool>(true, false, false, true), true), Struct_1(vec4<f32>(-1623f, 256f, 800f, -316f), vec4<u32>(4294967295u, 9891u, 17134u, 31251u), 4294967295u, vec4<bool>(false, true, false, false), true), Struct_1(vec4<f32>(-562f, -655f, 369f, 1108f), vec4<u32>(97991u, 18024u, 5552u, 16857u), 4294967295u, vec4<bool>(true, true, false, true), false), Struct_1(vec4<f32>(443f, -1107f, -323f, -1194f), vec4<u32>(1u, 12231u, 1u, 0u), 25943u, vec4<bool>(true, true, true, true), true), Struct_1(vec4<f32>(952f, 521f, 458f, 346f), vec4<u32>(4294967295u, 0u, 52314u, 53806u), 8002u, vec4<bool>(true, false, false, false), false), Struct_1(vec4<f32>(211f, 721f, 521f, 2248f), vec4<u32>(0u, 13427u, 0u, 1u), 1u, vec4<bool>(true, false, false, false), false), Struct_1(vec4<f32>(107f, 978f, 1207f, 561f), vec4<u32>(0u, 4294967295u, 29927u, 0u), 45384u, vec4<bool>(true, false, true, true), false), Struct_1(vec4<f32>(-272f, -995f, 256f, 869f), vec4<u32>(40250u, 49726u, 1u, 1u), 1u, vec4<bool>(true, true, false, true), false), Struct_1(vec4<f32>(2125f, 587f, 149f, -293f), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), 4294967295u, vec4<bool>(true, true, true, false), true), Struct_1(vec4<f32>(713f, 490f, 650f, -1000f), vec4<u32>(24541u, 4294967295u, 66441u, 10909u), 4294967295u, vec4<bool>(false, true, false, true), false), Struct_1(vec4<f32>(-708f, 386f, 1228f, -1000f), vec4<u32>(4294967295u, 19861u, 1u, 56172u), 182u, vec4<bool>(false, true, false, true), false), Struct_1(vec4<f32>(393f, -800f, 279f, 1050f), vec4<u32>(11745u, 11221u, 21575u, 0u), 4294967295u, vec4<bool>(true, false, false, true), false), Struct_1(vec4<f32>(1621f, 1000f, 932f, 1183f), vec4<u32>(46580u, 47074u, 1u, 4294967295u), 4294967295u, vec4<bool>(false, false, true, false), true), Struct_1(vec4<f32>(-297f, 360f, 911f, 254f), vec4<u32>(4846u, 66054u, 4294967295u, 9483u), 25179u, vec4<bool>(false, false, false, true), false), Struct_1(vec4<f32>(258f, 671f, 399f, 528f), vec4<u32>(51719u, 0u, 45129u, 3748u), 0u, vec4<bool>(false, true, true, false), false), Struct_1(vec4<f32>(724f, -748f, 1498f, 226f), vec4<u32>(0u, 54181u, 25219u, 1u), 91804u, vec4<bool>(false, false, true, true), false), Struct_1(vec4<f32>(550f, 558f, -1000f, -2061f), vec4<u32>(15246u, 27278u, 85207u, 3190u), 43792u, vec4<bool>(true, true, false, true), true), Struct_1(vec4<f32>(229f, -852f, 127f, -241f), vec4<u32>(23624u, 48798u, 64119u, 0u), 30144u, vec4<bool>(true, false, false, false), false), Struct_1(vec4<f32>(-1323f, -1008f, -1186f, 1698f), vec4<u32>(53798u, 13953u, 1920u, 14638u), 1u, vec4<bool>(true, false, false, true), false), Struct_1(vec4<f32>(125f, -909f, 1663f, 325f), vec4<u32>(4294967295u, 71793u, 1u, 56209u), 1u, vec4<bool>(true, false, false, true), true));

var<private> global2: array<vec2<f32>, 10>;

var<private> global3: vec3<u32> = vec3<u32>(0u, 0u, 19435u);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(1u, 12527u)) ^ select(firstLeadingBit(vec2<u32>(31271u, global3.x)), global3.zz ^ global3.xz, vec2<bool>(false, true)), vec2<u32>(20731u, _wgslsmith_mult_u32(0u, 1u))), 22u)];
    global2 = array<vec2<f32>, 10>();
    global1 = array<Struct_1, 22>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-var_0.a.yxz);
    var var_2 = 53535u;
    return abs(firstLeadingBit(reverseBits(~var_0.b.yxw)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(0u, 22u)];
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-794f, var_0.a.x, 453f), vec3<f32>(_wgslsmith_f_op_f32(-1189f * _wgslsmith_f_op_f32(f32(-1f) * -2336f)), -105f, _wgslsmith_f_op_f32(f32(-1f) * -943f)))));
    var_2 = _wgslsmith_f_op_vec3_f32(round(var_0.a.yzy));
    global3 = _wgslsmith_clamp_vec3_u32(abs(var_0.b.zzz), func_3(~_wgslsmith_div_vec4_u32(~vec4<u32>(global3.x, 21482u, 0u, 9552u), ~var_0.b)), var_0.b.wzy);
    return global1[_wgslsmith_index_u32(33459u, 22u)];
}

fn func_1() -> i32 {
    let var_0 = func_2(_wgslsmith_add_u32(0u, ~firstTrailingBit(u_input.a)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(var_0.a)), ~abs(vec4<u32>(var_0.b.x, 580u, 0u, 1u)) & ~var_0.b, ~global3.x, var_0.d, true);
    global1 = array<Struct_1, 22>();
    let var_2 = func_2(~firstTrailingBit(global3.x));
    global0 = -u_input.d.x;
    return u_input.d.x;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = arg_3;
    var var_1 = var_0.e;
    var var_2 = _wgslsmith_f_op_f32(abs(-1000f));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(45960u, _wgslsmith_mod_u32(~4294967295u, u_input.c)) | firstTrailingBit(0u), ~var_0.b.x), 22u)];
    let var_4 = 51262u;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.wwx)))) - vec3<f32>(arg_3.a.x, _wgslsmith_f_op_f32(1000f + arg_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(arg_1 + 1153f)) - _wgslsmith_f_op_f32(sign(var_3.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(-1477f, -757f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1090f))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(3177f)), 271f);
    global2 = array<vec2<f32>, 10>();
    var var_2 = vec2<f32>(-497f, _wgslsmith_f_op_f32(step(-819f, _wgslsmith_f_op_f32(-var_0.x))));
    let var_3 = ~max(~global3.x, ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_1.x, 244f) * vec3<f32>(351f, 684f, -366f))))))), abs(~(~vec3<u32>(var_3, u_input.a, global3.x))), _wgslsmith_f_op_vec3_f32(func_4(func_1(), var_0.x, _wgslsmith_clamp_vec2_u32(func_3(vec4<u32>(var_3, global3.x, 0u, var_3)).zx, _wgslsmith_add_vec2_u32(vec2<u32>(var_3, u_input.a), vec2<u32>(0u, 8102u)), reverseBits(vec2<u32>(global3.x, global3.x))) & vec2<u32>(~0u, 7690u), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1827f, 611f)))), firstTrailingBit(countOneBits(vec4<u32>(4294967295u, 8761u, 0u, 1u))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3, 26243u, 78472u), vec3<u32>(27113u, 8929u, u_input.a)), max(u_input.c, 0u)), !func_2(global3.x).d, ~u_input.e.x <= func_2(5330u).b.x))), u_input.d ^ u_input.d, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + -2009f)) * var_2.x), -304f));
}

