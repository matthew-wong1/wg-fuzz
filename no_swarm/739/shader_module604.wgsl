struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(38437i, 2147483647i, -11846i, 0i, 53874i, -52237i, 6144i, 1i, 2147483647i, 16600i, -3662i, i32(-2147483648), 26473i, 0i, i32(-2147483648), 1i, -12942i, 2147483647i, -20999i, 0i, 2147483647i, 1i, 2147483647i, i32(-2147483648), -23717i, 6550i);

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<vec3<i32>, 12>;

var<private> global3: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(-634f, 309f, 1243f), vec3<f32>(-963f, -1000f, 2577f), vec3<f32>(855f, 546f, -1289f), vec3<f32>(1287f, 857f, 162f), vec3<f32>(-1000f, 355f, -109f), vec3<f32>(-1316f, 581f, -592f), vec3<f32>(-1000f, 218f, 851f), vec3<f32>(-709f, -408f, 165f), vec3<f32>(-1584f, 1000f, -420f), vec3<f32>(1320f, 1000f, -665f), vec3<f32>(-664f, 937f, 867f), vec3<f32>(-939f, -817f, -790f), vec3<f32>(1000f, 170f, -1000f), vec3<f32>(370f, 348f, 2175f), vec3<f32>(-528f, 1004f, -827f), vec3<f32>(517f, -120f, 2309f), vec3<f32>(525f, 705f, -494f), vec3<f32>(-541f, -256f, 248f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(1u), ~(~30697u), (_wgslsmith_dot_vec2_u32(vec2<u32>(27454u, 4197u), ~vec2<u32>(4294967295u, 1u)) >> (4294967295u % 32u)) ^ countOneBits(~4294967295u)), 26u)];
    return global0[_wgslsmith_index_u32(~1u, 26u)];
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 26>();
    let var_0 = Struct_1(~(~3669u) >= _wgslsmith_dot_vec4_u32(vec4<u32>(25088u, 1u, abs(0u), 1u), vec4<u32>(_wgslsmith_add_u32(55391u, 1076u), 1u, select(4294967295u, 83280u, true), countOneBits(54580u))));
    let var_1 = func_3();
    var var_2 = 1i;
    global1 = array<Struct_1, 30>();
    return Struct_1(select(all(select(select(vec2<bool>(var_0.a, false), vec2<bool>(true, var_0.a), var_0.a), vec2<bool>(var_0.a, false), vec2<bool>(true, true))), any(select(select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a)), vec2<bool>(var_0.a, true), vec2<bool>(false, false))), (countOneBits(global0[_wgslsmith_index_u32(604u, 26u)]) != 45400i) || var_0.a));
}

fn func_1() -> u32 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(39887i, _wgslsmith_div_i32(u_input.a, global0[_wgslsmith_index_u32(17507u, 26u)]), -u_input.a), -2147483647i, _wgslsmith_sub_i32((global0[_wgslsmith_index_u32(0u, 26u)] ^ global0[_wgslsmith_index_u32(1u, 26u)]) << (1u % 32u), _wgslsmith_dot_vec3_i32(-global2[_wgslsmith_index_u32(111217u, 12u)], vec3<i32>(u_input.a, u_input.a, -1i)))), reverseBits(firstTrailingBit(i32(-1i) * -80534i)));
    global3 = array<vec3<f32>, 18>();
    global3 = array<vec3<f32>, 18>();
    global1 = array<Struct_1, 30>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(func_1(), 26u)], 1i, u_input.a | -2275i, -22052i), select(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(121365u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], 1i, -1i)), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(14915u, 26u)], 7285i, u_input.a) >> (vec4<u32>(29280u, 16883u, 17528u, 11894u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true))) >= -(~global0[_wgslsmith_index_u32(max(0u, 23970u), 26u)]));
    let var_1 = var_0.a;
    let var_2 = var_0.a;
    global3 = array<vec3<f32>, 18>();
    var var_3 = Struct_1(!select(!(global0[_wgslsmith_index_u32(4294967295u, 26u)] >= -47435i), false, var_2));
    var var_4 = ~firstLeadingBit(vec4<i32>(min(_wgslsmith_div_i32(u_input.a, 2147483647i), countOneBits(global0[_wgslsmith_index_u32(50881u, 26u)])), _wgslsmith_sub_i32(1i, u_input.a ^ u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(37136u, 26u)], u_input.a), vec2<i32>(u_input.a, 375i) | vec2<i32>(-2147483647i, 0i)), global0[_wgslsmith_index_u32(reverseBits(4294967295u), 26u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(906f, -914f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1313f - 257f)))));
}

