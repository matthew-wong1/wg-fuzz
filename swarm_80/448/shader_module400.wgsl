struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20>;

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<u32, 24> = array<u32, 24>(33198u, 44091u, 4294967295u, 102990u, 0u, 0u, 0u, 78094u, 12630u, 0u, 0u, 62939u, 4294967295u, 42406u, 4294967295u, 0u, 0u, 0u, 0u, 130191u, 4294967295u, 0u, 20657u, 30279u);

var<private> global3: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-1000f, 1679f), vec2<f32>(-1173f, -1242f), vec2<f32>(689f, -837f));

var<private> global4: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(i32(-2147483648), 2147483647i, 51232i, 0i), vec4<i32>(i32(-2147483648), 16224i, 45142i, 6319i), vec4<i32>(-7742i, i32(-2147483648), -670i, 4167i), vec4<i32>(-30560i, -1i, 0i, 7952i), vec4<i32>(i32(-2147483648), -40805i, 1i, 25422i), vec4<i32>(2147483647i, 851i, -48552i, -38628i), vec4<i32>(-49711i, 2147483647i, 35090i, -28695i), vec4<i32>(2147483647i, 8873i, -1i, 27337i), vec4<i32>(1419i, i32(-2147483648), -36724i, -17922i), vec4<i32>(1i, -12261i, 20774i, i32(-2147483648)), vec4<i32>(-1i, 15582i, -1i, 1i), vec4<i32>(20209i, 2147483647i, 2147483647i, 48899i), vec4<i32>(-1i, 18742i, -1i, -1i), vec4<i32>(-1i, 10620i, 2147483647i, 2147483647i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), 1i), vec4<i32>(1i, 1i, 8699i, 89i), vec4<i32>(36265i, i32(-2147483648), -1i, -1i), vec4<i32>(0i, 23786i, 1i, -26123i), vec4<i32>(-50425i, 1i, 1i, 66123i), vec4<i32>(9546i, 8216i, -1i, 16244i), vec4<i32>(-40897i, 9912i, -27049i, 1i), vec4<i32>(1196i, 1i, 7179i, 32820i), vec4<i32>(35357i, -17892i, 0i, 0i), vec4<i32>(2147483647i, 2147483647i, 1i, 19607i), vec4<i32>(50980i, 1i, -205i, 1i), vec4<i32>(-76099i, -18013i, -37367i, 1i), vec4<i32>(-5327i, -34575i, -51389i, 23225i), vec4<i32>(-30630i, -1i, 2147483647i, 36506i), vec4<i32>(16452i, 2147483647i, -37274i, 36969i), vec4<i32>(-22770i, 1983i, 2147483647i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, -74220i, i32(-2147483648)), vec4<i32>(0i, -12050i, 23530i, i32(-2147483648)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = u_input.c;
    global1 = array<Struct_1, 6>();
    var var_1 = abs(-arg_0.a ^ ~(-arg_0.a));
    global2 = array<u32, 24>();
    var var_2 = Struct_1(-u_input.c, _wgslsmith_mult_u32(u_input.d.x, firstLeadingBit(~arg_0.c)), 2570u);
    return _wgslsmith_div_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a, arg_0.c, u_input.b.x, var_2.b) & vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(12172u, 24u)], 4379u, u_input.d.x)), u_input.b), 24u)] >> ((1u >> (~(var_2.b >> (14642u % 32u)) % 32u)) % 32u), 42520u);
}

fn func_2(arg_0: bool) -> vec3<f32> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(u_input.b.x, func_3(global1[_wgslsmith_index_u32(34274u, 6u)])), u_input.d.yz, true), vec2<u32>(~(~firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28787u, 24u)], 24u)])), 4294967295u)), 6u)];
    let var_1 = ~(~u_input.b.wz);
    let var_2 = u_input.c >= (-2358i ^ (~u_input.c >> (~(~var_0.b) % 32u)));
    var var_3 = var_0.a;
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.yz, max(max(reverseBits(u_input.d.xy), ~vec2<u32>(var_1.x, global2[_wgslsmith_index_u32(1u, 24u)]) ^ _wgslsmith_div_vec2_u32(u_input.d.xz, u_input.b.ww)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.c, 0u), vec2<u32>(var_1.x, u_input.b.x)) | countOneBits(u_input.b.ww))), 6u)];
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-470f + _wgslsmith_f_op_f32(f32(-1f) * -226f)), -968f, _wgslsmith_f_op_f32(-337f * _wgslsmith_f_op_f32(max(-346f, -1385f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-637f, -983f, 601f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, -991f))), select(select(vec3<bool>(var_2, arg_0, arg_0), vec3<bool>(true, arg_0, true), vec3<bool>(false, true, arg_0)), select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, true, true), true), vec3<bool>(var_2, var_2, var_2)))), _wgslsmith_dot_vec2_u32(var_1, u_input.d.zx) >= ~_wgslsmith_mod_u32(var_1.x, var_1.x))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(898f, 634f))), 1f, _wgslsmith_f_op_f32(-373f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1634f, 886f)))), _wgslsmith_f_op_vec3_f32(func_2(0u == (_wgslsmith_sub_u32(u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.b, 24u)], 24u)]) >> (u_input.b.x % 32u)))));
    let var_1 = ~10108u;
    var var_2 = true;
    var var_3 = u_input.b;
    let var_4 = Struct_1(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-21537i, 21908i), vec2<i32>(arg_0.a, -28769i))), firstTrailingBit(select(vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(arg_0.a, -2147483647i, u_input.c), true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), ~vec3<i32>(-11854i, arg_0.a >> (1u % 32u), _wgslsmith_mod_i32(arg_0.a, 2147483647i))), _wgslsmith_mod_u32(~4294967295u, ~countOneBits(~0u)), ~firstTrailingBit(_wgslsmith_mod_u32(reverseBits(67292u), ~arg_0.b)));
    return reverseBits(-10494i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(Struct_1(0i, _wgslsmith_sub_u32(min(global2[_wgslsmith_index_u32(u_input.d.x, 24u)], 4294967295u), u_input.b.x), abs(reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)])))), global2[_wgslsmith_index_u32(0u >> ((_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(min(3379u, u_input.b.x), 24u)], 1u) | firstLeadingBit(u_input.d.x)) % 32u), 24u)], 1u);
    global4 = array<vec4<i32>, 32>();
    var var_1 = all(!select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(25301u, 24u)], u_input.b.x), 24u)], 24u)] <= 1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, reverseBits(-14507i));
}

