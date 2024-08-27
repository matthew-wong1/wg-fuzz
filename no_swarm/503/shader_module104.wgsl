struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(29999u);

var<private> global1: vec3<u32> = vec3<u32>(1249u, 4294967295u, 4294967295u);

var<private> global2: array<bool, 14> = array<bool, 14>(true, false, true, false, false, false, true, true, false, false, false, false, true, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec3<f32>) -> f32 {
    var var_0 = arg_1;
    global1 = vec3<u32>(~max(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 52906u, 0u), vec3<u32>(4104u, 1u, 2856u)), _wgslsmith_sub_u32(global1.x, 10433u)), 18535u), ~(~select(1u, 38873u & arg_1.a, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.a, 4294967295u, arg_1.a), 14u)])), _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.d.x, arg_1.a, var_0.a, 35360u) | ~vec4<u32>(global0.a, 51156u, var_0.a, 0u)), vec4<u32>(u_input.a >> (_wgslsmith_add_u32(global1.x, 4294967295u) % 32u), 1u, global1.x, _wgslsmith_mod_u32(u_input.c, 20223u))));
    var_0 = Struct_2(select(~_wgslsmith_div_u32(4294967295u, 35945u), max(4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 0u), vec2<u32>(1u, global1.x))), true));
    let var_1 = 34607i;
    var var_2 = Struct_1(_wgslsmith_sub_vec3_i32(-arg_0.xyy, ~(-(~u_input.b.xxw))));
    return _wgslsmith_f_op_f32(select(arg_3.x, arg_3.x, arg_2.x));
}

fn func_2(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -847f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-621f - -159f) * _wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.b.x, 0i, -2147483647i, u_input.b.x), Struct_2(global1.x), vec3<bool>(global2[_wgslsmith_index_u32(1u, 14u)], false, global2[_wgslsmith_index_u32(1u, 14u)]), vec3<f32>(-1471f, 1195f, -566f))))))), Struct_1(-vec3<i32>(u_input.b.x, -2147483647i, firstLeadingBit(u_input.b.x))), vec4<u32>(global0.a, _wgslsmith_add_u32(max(global0.a, ~global0.a), _wgslsmith_sub_u32(max(0u, 4294967295u), u_input.c & 23323u)), _wgslsmith_sub_u32(global1.x, 1u), 23966u), 837f);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a, 925f))))));
    global2 = array<bool, 14>();
    global2 = array<bool, 14>();
    var var_2 = Struct_1(abs(u_input.b.xzx));
    return !arg_0.xx;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec4<bool>(func_2(vec3<bool>(func_2(select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(15351u, 14u)]), vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.e, 14u)]))).x, global2[_wgslsmith_index_u32(0u, 14u)] && arg_0.x, global2[_wgslsmith_index_u32(~1u, 14u)])).x, !(true & all(arg_0)), arg_0.x, false);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1037f))), -866f, 37723u >= firstLeadingBit(global0.a))), Struct_1(min(select(u_input.b.zyz, u_input.b.xxz, true), u_input.b.ywy)), arg_1, _wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.b.x, -(~0i), u_input.b.x, u_input.b.x), arg_3, vec3<bool>(select(u_input.c <= global1.x, arg_0.x, var_0.x | false), func_2(var_0.zzy).x, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_2 * arg_2), -262f, _wgslsmith_f_op_f32(-688f - 1145f))))));
    var var_2 = var_0.yzx;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_1.a)), arg_2)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(round(-1000f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1202f), -891f)))), arg_2) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a, var_1.d, 453f, var_1.d))))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, _wgslsmith_f_op_f32(var_1.d * -656f), _wgslsmith_f_op_f32(trunc(var_1.d)), 131f), vec4<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1114f), _wgslsmith_f_op_f32(select(1312f, -657f, false)), _wgslsmith_f_op_f32(-var_1.d)), !select(vec4<bool>(var_0.x, true, var_2.x, false), vec4<bool>(arg_0.x, global2[_wgslsmith_index_u32(u_input.a, 14u)], var_0.x, true), vec4<bool>(true, false, true, true))))));
    let var_4 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(select(-(~var_1.b.a.x), var_1.b.a.x, any(!vec4<bool>(true, true, true, var_0.x))), u_input.b.x, countOneBits(u_input.b.x << (_wgslsmith_sub_u32(0u, var_1.c.x) % 32u))), var_1.b.a.x);
    return Struct_2(_wgslsmith_div_u32(_wgslsmith_add_u32((var_1.c.x >> (var_1.c.x % 32u)) | global0.a, ~(~arg_1.x)), global0.a));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> f32 {
    let var_0 = -1092f;
    let var_1 = Struct_1(u_input.b.wxw);
    let var_2 = func_4(select(!(!(!vec2<bool>(true, global2[_wgslsmith_index_u32(20377u, 14u)]))), func_2(select(!vec3<bool>(false, global2[_wgslsmith_index_u32(36207u, 14u)], true), select(vec3<bool>(true, global2[_wgslsmith_index_u32(global0.a, 14u)], false), vec3<bool>(global2[_wgslsmith_index_u32(51244u, 14u)], true, global2[_wgslsmith_index_u32(0u, 14u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(22575u, 14u)], global2[_wgslsmith_index_u32(28561u, 14u)])), !vec3<bool>(false, global2[_wgslsmith_index_u32(global1.x, 14u)], global2[_wgslsmith_index_u32(global1.x, 14u)]))), -2147483647i == (var_1.a.x << (_wgslsmith_add_u32(7027u, global1.x) % 32u))), vec4<u32>(global1.x | 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, reverseBits(74081u), min(global1.x, global1.x), ~0u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 29248u, global0.a), vec4<u32>(global0.a, global0.a, 12829u, 4294967295u))), ~(global1.x ^ arg_0), 1u), -887f, Struct_2(abs(global0.a) << (~global0.a % 32u)));
    let var_3 = any(!vec3<bool>(_wgslsmith_f_op_f32(-var_0) <= var_0, all(select(vec2<bool>(global2[_wgslsmith_index_u32(15009u, 14u)], true), vec2<bool>(global2[_wgslsmith_index_u32(65932u, 14u)], true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 14u)], global2[_wgslsmith_index_u32(1u, 14u)]))), 1f != _wgslsmith_f_op_f32(max(-1083f, var_0))));
    global1 = ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(~global1.x, 42075u, global0.a >> (var_2.a % 32u)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a, u_input.e, var_2.a), vec3<u32>(var_2.a, 1u, global0.a)), max(vec3<u32>(0u, global0.a, 1u), vec3<u32>(39478u, global1.x, 6441u)), !var_3), vec3<u32>(min(427u, 14434u), u_input.a, _wgslsmith_clamp_u32(u_input.c, u_input.c, 30318u))) ^ vec3<u32>(7535u, ~1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4294967295u, arg_0), ~vec3<u32>(global0.a, 42238u, global1.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1070f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1373f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(22941u, vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x))) * _wgslsmith_div_f32(1000f, 600f)) + _wgslsmith_f_op_f32(func_3(vec4<i32>(43524i, u_input.b.x, -15469i, u_input.b.x), func_4(vec2<bool>(true, global2[_wgslsmith_index_u32(global1.x, 14u)]), vec4<u32>(global0.a, 10540u, global0.a, 4294967295u), -179f, Struct_2(21523u)), !vec3<bool>(false, global2[_wgslsmith_index_u32(2402u, 14u)], global2[_wgslsmith_index_u32(global0.a, 14u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-507f, 1136f, -599f) + vec3<f32>(-1176f, -246f, 1291f)))))));
    global2 = array<bool, 14>();
    global1 = vec3<u32>(~36620u, u_input.c ^ 1u, ~(_wgslsmith_dot_vec3_u32(max(vec3<u32>(global0.a, global1.x, 38792u), vec3<u32>(global1.x, global1.x, global0.a)), ~vec3<u32>(global1.x, global0.a, 18435u)) << (abs(u_input.a ^ global0.a) % 32u)));
    global2 = array<bool, 14>();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(0i, 2147483647i, u_input.b.x, u_input.b.x) >> (vec4<u32>(global0.a, 0u, global1.x, global0.a) % vec4<u32>(32u)), func_4(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 14u)], global2[_wgslsmith_index_u32(0u, 14u)]), vec4<u32>(global1.x, u_input.a, global1.x, global0.a), -281f, Struct_2(8173u)), select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(global1.x, 14u)], global2[_wgslsmith_index_u32(global0.a, 14u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(0u, 14u)]), vec3<bool>(global2[_wgslsmith_index_u32(9169u, 14u)], global2[_wgslsmith_index_u32(10389u, 14u)], false)), _wgslsmith_div_vec3_f32(vec3<f32>(716f, -1426f, 871f), vec3<f32>(-1000f, -1594f, -145f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1318f) + 1f))), Struct_1(vec3<i32>(i32(-1i) * -1i, 1i, u_input.b.x | 8118i)), (~vec4<u32>(u_input.d.x, global1.x, 4294967295u, global1.x) << ((vec4<u32>(0u, 46473u, u_input.d.x, global1.x) << (~vec4<u32>(0u, 59469u, 0u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))) << ((vec4<u32>(min(85008u, 8671u), max(global0.a, u_input.d.x), 0u, global0.a) << (min(vec4<u32>(global1.x, u_input.e, global0.a, 15323u), select(vec4<u32>(0u, 142296u, 16893u, global1.x), vec4<u32>(1u, global0.a, 92491u, global1.x), false)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1f, 1388f)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-771f, 1000f)), -1507f))))));
    var var_2 = select(any(vec4<bool>(global2[_wgslsmith_index_u32(var_1.c.x >> (8546u % 32u), 14u)], global2[_wgslsmith_index_u32(select(firstTrailingBit(0u), global0.a | var_1.c.x, false), 14u)], true, true)), false, true);
    let x = u_input.a;
    s_output = StorageBuffer(34286i, -24872i, vec2<f32>(var_1.a, _wgslsmith_div_f32(var_1.a, var_1.a)), 1017u, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.d, var_1.a))));
}

