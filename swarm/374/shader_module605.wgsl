struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec3<i32>(2147483647i, i32(-2147483648), -1i), Struct_1(-1i, vec3<i32>(-20628i, 0i, -1i), 492f), vec4<f32>(-1889f, -250f, -1000f, -1049f)), Struct_2(vec3<i32>(2147483647i, 0i, -40298i), Struct_1(13852i, vec3<i32>(-39195i, 1i, 2147483647i), 1091f), vec4<f32>(795f, -1226f, 1720f, 151f)), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), Struct_1(10321i, vec3<i32>(1i, -15509i, i32(-2147483648)), -1187f), vec4<f32>(-809f, -118f, 1986f, -234f)), Struct_2(vec3<i32>(13232i, 2147483647i, i32(-2147483648)), Struct_1(-1i, vec3<i32>(i32(-2147483648), 2147483647i, -26899i), -495f), vec4<f32>(1420f, -996f, -1155f, 209f)), Struct_2(vec3<i32>(i32(-2147483648), 0i, 0i), Struct_1(2787i, vec3<i32>(-1i, 30942i, i32(-2147483648)), -208f), vec4<f32>(1000f, -750f, -1543f, -1019f)));

var<private> global2: array<i32, 6> = array<i32, 6>(i32(-2147483648), -19415i, 27450i, 3473i, -61763i, -33691i);

var<private> global3: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(2147483647i, vec3<i32>(1i, -11418i, 24436i), -1000f), Struct_1(1i, vec3<i32>(63277i, 1i, 0i), 875f), Struct_1(6352i, vec3<i32>(1i, -1i, 29220i), 190f), Struct_1(-1i, vec3<i32>(i32(-2147483648), -1i, -2045i), 279f), Struct_1(10823i, vec3<i32>(2147483647i, 14457i, 8270i), -167f), Struct_1(1i, vec3<i32>(-10271i, 0i, 0i), 420f), Struct_1(-35633i, vec3<i32>(2147483647i, 16203i, i32(-2147483648)), 777f), Struct_1(6211i, vec3<i32>(-60432i, -52i, 1i), -1199f), Struct_1(2147483647i, vec3<i32>(-17103i, -54413i, -2461i), 1273f), Struct_1(1i, vec3<i32>(2147483647i, 1i, 2147483647i), 2551f), Struct_1(0i, vec3<i32>(-59715i, 2147483647i, -6049i), 1126f), Struct_1(10282i, vec3<i32>(-16038i, -11385i, 41479i), 530f), Struct_1(i32(-2147483648), vec3<i32>(1i, 1i, 0i), 2900f), Struct_1(0i, vec3<i32>(2147483647i, -1i, 2147483647i), -129f), Struct_1(1i, vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), -994f), Struct_1(0i, vec3<i32>(7815i, 9258i, -27192i), -1341f), Struct_1(10705i, vec3<i32>(2674i, 0i, -29611i), -1563f), Struct_1(-54901i, vec3<i32>(26905i, -1i, 55115i), -1158f), Struct_1(2147483647i, vec3<i32>(i32(-2147483648), 7060i, 0i), -149f), Struct_1(-33681i, vec3<i32>(0i, 7331i, 21641i), -700f), Struct_1(-1i, vec3<i32>(2147483647i, 46096i, 115i), -216f), Struct_1(2147483647i, vec3<i32>(1i, 31265i, 0i), 1330f), Struct_1(-11895i, vec3<i32>(2147483647i, 12455i, 0i), -262f), Struct_1(i32(-2147483648), vec3<i32>(2147483647i, 0i, -29031i), 684f), Struct_1(1i, vec3<i32>(1i, 11841i, -35289i), -877f), Struct_1(1i, vec3<i32>(1i, -1i, i32(-2147483648)), 523f));

var<private> global4: array<bool, 20> = array<bool, 20>(false, true, false, false, false, false, false, true, false, true, true, true, true, false, false, false, false, true, true, false);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(0i, vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(17431i, global2[_wgslsmith_index_u32(u_input.a.x, 6u)]), abs(vec2<i32>(-2147483647i, 1i))), 55531i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -897f) + _wgslsmith_f_op_f32(-1447f * -104f)))));
    let var_1 = 201f;
    global1 = array<Struct_2, 5>();
    global4 = array<bool, 20>();
    global4 = array<bool, 20>();
    return _wgslsmith_mod_i32(select(44090i, 22203i, global0.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 6u)], -(var_0.a ^ -10376i)), ~29192i));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = true;
    let var_1 = arg_0;
    global4 = array<bool, 20>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c + _wgslsmith_f_op_vec4_f32(-arg_0.c)) * _wgslsmith_f_op_vec4_f32(var_1.c + var_1.c)))) - arg_0.c);
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_0.c), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_0.c))))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1544f), -206f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b.c, 649f, global4[_wgslsmith_index_u32(u_input.b, 20u)])) * _wgslsmith_f_op_f32(max(arg_0.b.c, var_2.x))) - arg_0.c.x), _wgslsmith_f_op_f32(-var_2.x)));
    return vec4<u32>(1u << (~(~abs(u_input.b)) % 32u), 4294967295u, select(((u_input.b >> (u_input.a.x % 32u)) << (min(29962u, u_input.a.x) % 32u)) | 1u, _wgslsmith_clamp_u32(27860u, u_input.b, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy)), all(global0.zwy) | false), 4294967295u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_sub_vec4_u32(func_3(global1[_wgslsmith_index_u32(u_input.a.x, 5u)]) ^ ~(vec4<u32>(4719u, 34552u, u_input.a.x, u_input.a.x) >> (~vec4<u32>(0u, 4294967295u, u_input.b, var_0.x) % vec4<u32>(32u))), abs(~vec4<u32>(arg_1.x, arg_1.x, u_input.a.x, arg_1.x)) & vec4<u32>(min(~var_0.x, ~4294967295u), ~4294967295u, arg_1.x, arg_1.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-777f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1218f, -390f, false)) + _wgslsmith_div_f32(411f, 1237f))), -1133f, var_1.x > 1u)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-737f * _wgslsmith_f_op_f32(max(315f, 2559f)))))));
    let var_3 = ~u_input.c;
    let var_4 = var_0;
    return Struct_2(vec3<i32>(abs(firstLeadingBit(~(-36621i))), i32(-1i) * -837i, ~(~(-1i))), global3[_wgslsmith_index_u32(~41619u, 26u)], _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(sign(-523f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-756f, 1647f)) * 1415f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(1000f * -1132f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 6>();
    let var_0 = func_2(abs(vec2<i32>(func_1(), -40087i) | vec2<i32>(-u_input.c, global2[_wgslsmith_index_u32(u_input.b, 6u)] ^ u_input.c)), vec3<u32>(_wgslsmith_mult_u32(~abs(u_input.a.x), ~5043u ^ _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.b, 1u, 4294967295u))), u_input.b, u_input.a.x));
    let var_1 = vec3<u32>(~(~max(~4294967295u, 22714u)), 4294967295u, 34073u);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(var_0.b.b.yy, ~(~abs(var_1))).a.yy, var_0.b.b.yy, vec4<i32>(global2[_wgslsmith_index_u32(min(var_1.x, reverseBits(u_input.a.x & 1u)), 6u)], u_input.c, -21906i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(-15721i, 42545i)), abs(vec2<i32>(-1i, var_0.a.x))) | 0i));
}

