struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(4294967295u, 0u, 1u, 0u);

var<private> global1: array<bool, 6> = array<bool, 6>(true, false, false, false, true, false);

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec3<u32>(15340u, 19273u, 97214u), i32(-2147483648), 111821u, 1u, vec3<i32>(1i, 35667i, 1i)), Struct_2(vec3<u32>(0u, 52675u, 26224u), -17995i, 1u, 19579u, vec3<i32>(49271i, -14254i, 0i)), Struct_2(vec3<u32>(4294967295u, 2603u, 4294967295u), 17936i, 1u, 33016u, vec3<i32>(-1i, -37477i, 11195i)), Struct_2(vec3<u32>(31860u, 30826u, 4294967295u), 1i, 4294967295u, 4294967295u, vec3<i32>(-6180i, -28391i, 1i)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 4294967295u), 37813i, 0u, 1u, vec3<i32>(0i, -25199i, 0i)), Struct_2(vec3<u32>(75441u, 58568u, 0u), -40277i, 4294967295u, 44119u, vec3<i32>(42840i, -29377i, i32(-2147483648))), Struct_2(vec3<u32>(6879u, 1u, 0u), 19552i, 23862u, 853u, vec3<i32>(2147483647i, -22232i, i32(-2147483648))), Struct_2(vec3<u32>(32174u, 4294967295u, 75140u), 12647i, 3842u, 49342u, vec3<i32>(-1i, -1i, -1i)), Struct_2(vec3<u32>(4294967295u, 6192u, 42267u), 2147483647i, 32216u, 4294967295u, vec3<i32>(4726i, 1i, 8611i)), Struct_2(vec3<u32>(14035u, 34518u, 0u), 0i, 0u, 11098u, vec3<i32>(28613i, i32(-2147483648), -1i)), Struct_2(vec3<u32>(29709u, 0u, 4294967295u), 16574i, 4294967295u, 58159u, vec3<i32>(-49539i, 1i, -36392i)), Struct_2(vec3<u32>(4294967295u, 55339u, 10827u), -20234i, 4294967295u, 37596u, vec3<i32>(11037i, i32(-2147483648), 2147483647i)), Struct_2(vec3<u32>(4294967295u, 101964u, 0u), -8966i, 4294967295u, 1u, vec3<i32>(-33063i, 51188i, 1i)), Struct_2(vec3<u32>(62016u, 34503u, 0u), -1i, 49636u, 4294967295u, vec3<i32>(50591i, 2147483647i, -1i)), Struct_2(vec3<u32>(6321u, 0u, 0u), 0i, 0u, 1u, vec3<i32>(i32(-2147483648), 28721i, -7281i)), Struct_2(vec3<u32>(12402u, 10654u, 67794u), -1i, 11346u, 4294967295u, vec3<i32>(2147483647i, -35372i, -1126i)), Struct_2(vec3<u32>(26665u, 4294967295u, 4294967295u), 0i, 0u, 4294967295u, vec3<i32>(22983i, 17048i, 0i)), Struct_2(vec3<u32>(56663u, 0u, 4294967295u), -40495i, 1u, 1u, vec3<i32>(0i, 2914i, -18921i)), Struct_2(vec3<u32>(24130u, 0u, 4294967295u), 0i, 6613u, 58069u, vec3<i32>(35873i, 18852i, -3946i)), Struct_2(vec3<u32>(1u, 57835u, 47790u), 0i, 4294967295u, 41137u, vec3<i32>(20559i, -7638i, -22232i)), Struct_2(vec3<u32>(4294967295u, 18384u, 4294967295u), 0i, 1u, 4294967295u, vec3<i32>(19601i, 33597i, 46953i)));

var<private> global3: vec4<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -917f)))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-387f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(341f, 602f)))));
    var var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1006f, 772f) + vec2<f32>(-322f, -236f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(691f, 842f)))))))));
    let var_3 = u_input.c;
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-490f, 748f) - vec2<f32>(var_2.x, var_2.x)) + vec2<f32>(var_2.x, 255f)) * vec2<f32>(919f, _wgslsmith_f_op_f32(max(var_2.x, var_2.x)))), vec2<f32>(1f, 1f)));
    return all(!vec3<bool>(true, true, true || all(arg_1.a)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> StorageBuffer {
    global2 = array<Struct_2, 21>();
    var var_0 = -reverseBits(~max(min(2147483647i, global3.x), arg_0.e.x));
    let var_1 = global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~(1u >> (max(16704u, u_input.c) % 32u)), 4u)], global0[_wgslsmith_index_u32(3051u, 4u)])), 21u)];
    let var_2 = ~countOneBits(vec4<i32>(-arg_0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.e.x, -2147483647i), vec2<i32>(51245i, 1i)), -632i, -var_1.b) | -countOneBits(vec4<i32>(-31580i, var_1.e.x, u_input.a.x, 2147483647i)));
    var var_3 = arg_2.a.zyw;
    return StorageBuffer(-1i, 194f);
}

fn func_1() -> StorageBuffer {
    global1 = array<bool, 6>();
    var var_0 = Struct_2(u_input.d.wwy, u_input.a.x << (u_input.e % 32u), 129556u, ~(global0[_wgslsmith_index_u32(u_input.d.x, 4u)] << (countOneBits(~u_input.c) % 32u)), vec3<i32>(0i, 8954i, -global3.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -492f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2792f)) * 1473f)))));
    global2 = array<Struct_2, 21>();
    return func_3(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~u_input.d.wwz, _wgslsmith_sub_vec3_u32(~var_0.a, vec3<u32>(var_0.c, 0u, var_0.d))), 58227u | (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 4u)]), vec2<u32>(var_0.c, u_input.d.x)) & u_input.d.x)), 21u)], any(vec4<bool>(true, all(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 6u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 4u)], 6u)], true)), func_2(var_0.a.xy, Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], false, false, global1[_wgslsmith_index_u32(u_input.e, 6u)]), var_0.e, 0i), Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], 6u)], true, true), u_input.a, u_input.a.x), vec3<i32>(19826i, u_input.a.x, -23996i)) | global1[_wgslsmith_index_u32(~4294967295u, 6u)], !global1[_wgslsmith_index_u32(~8207u, 6u)])), Struct_1(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(18337u, 6u)], true, global1[_wgslsmith_index_u32(u_input.c, 6u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26872u, 4u)], 6u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 6u)], false, global1[_wgslsmith_index_u32(u_input.e, 6u)], true), vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(u_input.b, 6u)]))), global3.xzz, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

