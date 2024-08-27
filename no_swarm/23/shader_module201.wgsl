struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(-10723i, 67130i), vec2<i32>(-20516i, 1i), vec2<i32>(-25427i, -1i), vec2<i32>(24155i, -1i), vec2<i32>(-13039i, i32(-2147483648)), vec2<i32>(-1i, 9984i));

var<private> global1: Struct_2 = Struct_2(false, 4294967295u, -539f, Struct_1(vec2<u32>(60623u, 39371u)));

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(true, 1u, -212f, Struct_1(vec2<u32>(1u, 10315u))), Struct_2(true, 38208u, -1000f, Struct_1(vec2<u32>(15907u, 7232u))), Struct_2(true, 4294967295u, 1000f, Struct_1(vec2<u32>(0u, 0u))), Struct_2(true, 4294967295u, 100f, Struct_1(vec2<u32>(1u, 4294967295u))), Struct_2(false, 1u, 184f, Struct_1(vec2<u32>(0u, 9493u))), Struct_2(false, 103596u, 365f, Struct_1(vec2<u32>(79111u, 0u))), Struct_2(false, 1u, -804f, Struct_1(vec2<u32>(1u, 68710u))), Struct_2(true, 4294967295u, 491f, Struct_1(vec2<u32>(0u, 0u))), Struct_2(false, 0u, -1000f, Struct_1(vec2<u32>(46427u, 30634u))), Struct_2(false, 58956u, 501f, Struct_1(vec2<u32>(8697u, 17323u))), Struct_2(true, 16151u, -423f, Struct_1(vec2<u32>(1u, 4294967295u))), Struct_2(true, 1u, 952f, Struct_1(vec2<u32>(0u, 106859u))), Struct_2(true, 8713u, 1000f, Struct_1(vec2<u32>(2772u, 9436u))), Struct_2(false, 70523u, -1000f, Struct_1(vec2<u32>(13157u, 1u))), Struct_2(false, 11971u, 633f, Struct_1(vec2<u32>(4294967295u, 4294967295u))), Struct_2(true, 4294967295u, -914f, Struct_1(vec2<u32>(38392u, 21935u))), Struct_2(true, 1u, -174f, Struct_1(vec2<u32>(0u, 46375u))), Struct_2(true, 4294967295u, -1000f, Struct_1(vec2<u32>(8011u, 1u))), Struct_2(true, 33514u, -2028f, Struct_1(vec2<u32>(1u, 82885u))), Struct_2(true, 42320u, 731f, Struct_1(vec2<u32>(13003u, 1u))), Struct_2(false, 0u, -107f, Struct_1(vec2<u32>(18520u, 1u))), Struct_2(true, 1u, 1000f, Struct_1(vec2<u32>(19298u, 4294967295u))), Struct_2(true, 0u, 646f, Struct_1(vec2<u32>(4294967295u, 8086u))), Struct_2(true, 41104u, 951f, Struct_1(vec2<u32>(0u, 1u))), Struct_2(true, 1u, 569f, Struct_1(vec2<u32>(25290u, 1837u))), Struct_2(true, 28458u, 1162f, Struct_1(vec2<u32>(31748u, 0u))), Struct_2(false, 1u, 257f, Struct_1(vec2<u32>(1u, 65685u))), Struct_2(false, 8218u, 781f, Struct_1(vec2<u32>(4294967295u, 1u))), Struct_2(true, 4294967295u, 1195f, Struct_1(vec2<u32>(0u, 34664u))));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> vec4<f32> {
    var var_0 = u_input.c;
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_mod_u32(0u, 0u | arg_1.a), 0u), abs(_wgslsmith_mod_vec2_u32((vec2<u32>(global1.d.a.x, u_input.d.x) >> (u_input.b % vec2<u32>(32u))) << (global1.d.a % vec2<u32>(32u)), ~reverseBits(global1.d.a)))), 29u)];
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(154f))))), arg_0.x, !(!any(vec4<bool>(false, true, false, false)))));
    var var_3 = any(select(!(!vec2<bool>(global1.a, false)), !vec2<bool>(any(vec4<bool>(false, false, var_1.a, var_1.a)), select(true, false, false)), var_1.a));
    var var_4 = ~countOneBits((~vec4<i32>(-1i, -18144i, u_input.c, u_input.c) & firstTrailingBit(vec4<i32>(1i, u_input.c, -31375i, u_input.c))) >> (~firstTrailingBit(u_input.d) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_0, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0 + vec4<f32>(1961f, arg_0.x, 1000f, -1797f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, arg_0.x, global1.c, -1092f)), global1.a != var_1.a))))));
}

fn func_2() -> Struct_1 {
    global1 = Struct_2(global1.a, _wgslsmith_mult_u32(~u_input.b.x, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(223f + _wgslsmith_f_op_f32(ceil(global1.c)))), Struct_1(~vec2<u32>(~0u, _wgslsmith_sub_u32(u_input.b.x, u_input.a.x))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global1.c, -1000f, -609f, global1.c), vec4<f32>(global1.c, -877f, -668f, 312f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1530f, global1.c, -1609f, -1246f)))) - _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(930f, 427f, -679f, global1.c), vec4<f32>(global1.c, global1.c, -1073f, global1.c)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2264f, -1175f, -1000f, global1.c) + vec4<f32>(542f, global1.c, global1.c, -537f)))), Struct_3(global1.d.a.x))));
    let var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(u_input.d.wz, vec2<u32>(29784u, 47188u), u_input.a.xx)), vec2<u32>(~global1.d.a.x, global1.b) ^ vec2<u32>(~global1.d.a.x, ~0u))), 29u)];
    var var_2 = Struct_3(~1u);
    let var_3 = var_2.a & ~firstTrailingBit(countOneBits(28453u));
    return Struct_1(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(55613u, var_2.a, var_3), ~(~60000u)), 1u));
}

fn func_1() -> Struct_2 {
    global1 = Struct_2(true, _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, u_input.d.x, firstLeadingBit(u_input.a.x)), ~(~firstTrailingBit(0u))), _wgslsmith_f_op_f32(global1.c - 1211f), func_2());
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -2025f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(-1614f, global1.c, global1.c, 874f), Struct_3(54476u))).x))) + global1.c)));
    global1 = Struct_2(!(~u_input.c >= ~(-1i & u_input.c)), global1.d.a.x, global1.c, global1.d);
    global0 = array<vec2<i32>, 6>();
    global0 = array<vec2<i32>, 6>();
    return Struct_2(true, u_input.a.x & ~(~u_input.b.x), -429f, Struct_1(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, u_input.b.x), global1.d.a) & vec2<u32>(u_input.a.x, global1.d.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -354f)) * 943f));
    global1 = Struct_2(!(!(!global1.a)), _wgslsmith_clamp_u32(countOneBits(22450u | u_input.a.x), 67591u, 1u), -1250f, Struct_1(vec2<u32>(3692u, u_input.d.x)));
    let var_1 = vec4<i32>(1i, -1i, u_input.c, u_input.c);
    let var_2 = select(select(!(!(!vec2<bool>(global1.a, global1.a))), !vec2<bool>(global1.a, !global1.a), vec2<bool>(func_1().a, !global1.a)), !vec2<bool>(any(vec3<bool>(global1.a, global1.a, global1.a)), true), ((-u_input.c & 0i) < -u_input.c) | any(!(!vec3<bool>(global1.a, false, global1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(global1.c)), firstTrailingBit(~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 2147483647i) << (vec2<u32>(global1.b, u_input.a.x) % vec2<u32>(32u)), ~vec2<i32>(u_input.c, var_1.x))), vec4<u32>(1u, 47436u, u_input.d.x, ~1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1475f, var_0, var_0, var_0) + vec4<f32>(var_0, var_0, -479f, -181f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, var_0, var_0, global1.c))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2272f, 1256f, -474f, var_0)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_0, var_0, -787f), vec4<f32>(1143f, 1000f, global1.c, global1.c), var_2.x)), select(vec4<bool>(true, false, true, true), vec4<bool>(global1.a, false, global1.a, global1.a), vec4<bool>(var_2.x, var_2.x, var_2.x, true)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1035f, global1.c, 175f, -256f), vec4<f32>(var_0, var_0, 613f, global1.c)), vec4<f32>(-1149f, -753f, global1.c, -236f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1350f, global1.c, var_0, global1.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, var_0, global1.c, global1.c) - vec4<f32>(418f, global1.c, 1000f, global1.c))), !(!vec4<bool>(var_2.x, global1.a, global1.a, true))))), firstTrailingBit(abs(u_input.d.wxz)));
}

