struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3>;

var<private> global1: array<f32, 29> = array<f32, 29>(-1278f, 1102f, -735f, -1497f, -283f, -867f, 1040f, -2265f, -426f, -1385f, 618f, 837f, 1019f, -2277f, 554f, 1000f, -1000f, 1054f, -1204f, -675f, -307f, -291f, -417f, -1105f, 426f, 567f, -1000f, 167f, 1120f);

var<private> global2: array<bool, 20>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> bool {
    var var_0 = Struct_3(vec4<u32>(u_input.b, ~u_input.b, 4294967295u, 1u), Struct_1(~(vec3<i32>(17150i, 0i, -32191i) << (vec3<u32>(arg_0.x, arg_0.x, arg_0.x) % vec3<u32>(32u))) | vec3<i32>(1i, 1i, 1i), any(select(select(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 20u)], true, global2[_wgslsmith_index_u32(arg_0.x, 20u)], global2[_wgslsmith_index_u32(66238u, 20u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 20u)], false, true, global2[_wgslsmith_index_u32(arg_0.x, 20u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(arg_0.x, 20u)], global2[_wgslsmith_index_u32(arg_0.x, 20u)])), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 20u)], false, global2[_wgslsmith_index_u32(4294967295u, 20u)], false), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0.x, 20u)], true, global2[_wgslsmith_index_u32(81730u, 20u)])))), u_input.a, 0i);
    global0 = array<vec4<u32>, 3>();
    var var_1 = all(vec2<bool>(true, all(vec2<bool>(true, true)) | all(select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(1505u, 20u)], false), vec3<bool>(true, false, true), vec3<bool>(var_0.b.b, true, false)))));
    global2 = array<bool, 20>();
    var var_2 = vec3<i32>(var_0.d, ~select(24327i, reverseBits(var_0.d), all(vec3<bool>(true, true, var_0.b.b))), -var_0.d);
    return ~select(7159u, 1u, true) <= ~_wgslsmith_sub_u32(94356u, var_0.c);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>) -> vec4<i32> {
    let var_0 = Struct_2(Struct_1(-vec3<i32>(i32(-1i) * -1i, arg_0.x & 6742i, _wgslsmith_sub_i32(arg_1.x, arg_0.x)), any(vec3<bool>(true, !global2[_wgslsmith_index_u32(u_input.b, 20u)], true))), vec3<bool>((any(vec3<bool>(false, false, global2[_wgslsmith_index_u32(4294967295u, 20u)])) || func_3(vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.b))) & true, select((32139u == u_input.b) & global2[_wgslsmith_index_u32(u_input.a, 20u)], true, false), global2[_wgslsmith_index_u32(~0u, 20u)]), 1103f);
    let var_1 = 4294967295u;
    let var_2 = Struct_4(25004u, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(~var_1), ~(~var_1)), 29u)]);
    global2 = array<bool, 20>();
    var var_3 = _wgslsmith_f_op_f32(ceil(1000f));
    return vec4<i32>(max(1i, -15349i), abs(-1i), var_0.a.a.x, _wgslsmith_sub_i32(-firstLeadingBit(2147483647i), arg_1.x));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-922f, global1[_wgslsmith_index_u32(max(36285u, 2326u), 29u)])))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 29u)]), global1[_wgslsmith_index_u32(1u, 29u)]), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-777f, global1[_wgslsmith_index_u32(1u, 29u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 29u)], 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 29u)], -465f) * vec2<f32>(-409f, 791f)), !vec2<bool>(global2[_wgslsmith_index_u32(27810u, 20u)], true))))) - vec2<f32>(global1[_wgslsmith_index_u32(~abs(u_input.a), 29u)], _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.a, 29u)], -187f))))));
    var var_1 = abs(vec4<i32>(firstLeadingBit(13925i), ~1i, i32(-1i) * -1i, -51341i)) | max(func_2(vec3<i32>(1i, 1i, 1i), -vec2<i32>(0i, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, -2147483647i, 2147483647i), countOneBits(vec4<i32>(25899i, -8240i, 1i, 2147483647i)) << (~global0[_wgslsmith_index_u32(u_input.b, 3u)] % vec4<u32>(32u)), vec4<i32>(~16377i, -11083i << (u_input.a % 32u), 1i, -1i)));
    let var_2 = Struct_4(~_wgslsmith_add_u32(0u | u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(u_input.b, 48724u)) << (0u % 32u)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 29u)]));
    let var_3 = var_2;
    global2 = array<bool, 20>();
    return Struct_3(_wgslsmith_clamp_vec4_u32(max(select(vec4<u32>(var_2.a, u_input.b, var_2.a, 4294967295u), ~vec4<u32>(var_3.a, var_2.a, var_2.a, u_input.a), true), vec4<u32>(4294967295u, firstLeadingBit(1u), var_3.a, var_2.a)), vec4<u32>(_wgslsmith_mult_u32(1u, countOneBits(u_input.b)), 0u, ~19852u, firstTrailingBit(4294967295u)), ~(global0[_wgslsmith_index_u32(4294967295u, 3u)] >> (global0[_wgslsmith_index_u32(4294967295u, 3u)] % vec4<u32>(32u))) | ~vec4<u32>(var_3.a, u_input.a, 92044u, var_3.a)), Struct_1(-min(vec3<i32>(2147483647i, var_1.x, var_1.x), var_1.zwx), true), 116518u, _wgslsmith_sub_i32(var_1.x, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_2(func_1().b, !vec3<bool>(select(var_0.c >= 1u, var_0.b.b, func_1().b.b), true, 14007u > u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -893f));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(13581u, 29u)], 1415f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 29u)], var_1.c))) - vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 29u)]), -290f)) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(579f)) + _wgslsmith_f_op_f32(var_1.c + var_1.c)), var_1.c))));
    let var_3 = vec2<bool>(!(!var_1.a.b), var_0.d != _wgslsmith_sub_i32(-var_0.b.a.x, -1i));
    global2 = array<bool, 20>();
    let var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2346f + var_2.x) - 1106f))), var_2.x, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(27553u, 29u)], -1000f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(671f - global1[_wgslsmith_index_u32(u_input.b, 29u)]), _wgslsmith_f_op_f32(f32(-1f) * -1879f), var_2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(418f, var_1.c, var_2.x), vec3<f32>(772f, var_1.c, -321f)))), select(vec3<bool>(true, var_3.x, true), vec3<bool>(var_3.x, true, global2[_wgslsmith_index_u32(18374u, 20u)]), global2[_wgslsmith_index_u32(~u_input.a, 20u)]))))));
    let var_5 = var_0.d & var_0.d;
    let var_6 = var_4.x;
    var var_7 = max(~vec3<u32>(var_0.a.x, reverseBits(61004u >> (var_0.c % 32u)), countOneBits(_wgslsmith_div_u32(62289u, var_0.a.x))), ~firstLeadingBit(vec3<u32>(~u_input.b, _wgslsmith_mod_u32(u_input.a, 4294967295u), 5603u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 29u)], 858f, var_2.x, 197f) - vec4<f32>(143f, -682f, -1192f, var_2.x)) - vec4<f32>(-493f, 153f, var_4.x, global1[_wgslsmith_index_u32(u_input.a, 29u)])), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_4.x, var_6, var_4.x, 129f), vec4<f32>(var_1.c, var_1.c, var_1.c, -908f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, -1105f, 275f, -1887f)))))))), var_0.a.x | 1u, _wgslsmith_f_op_f32(max(-395f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_4.x))))))));
}

