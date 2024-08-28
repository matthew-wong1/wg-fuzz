struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 17>;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(1u, vec3<u32>(23457u, 4294967295u, 1u), vec4<f32>(296f, -1000f, -351f, -1000f), vec4<bool>(true, true, true, false)), Struct_1(1901u, vec3<u32>(52117u, 1469u, 0u), vec4<f32>(-472f, 831f, -2246f, 1000f), vec4<bool>(false, true, false, false)), Struct_1(29167u, vec3<u32>(0u, 23485u, 0u), vec4<f32>(1360f, -617f, 519f, 1891f), vec4<bool>(false, true, true, true)), Struct_1(42616u, vec3<u32>(45476u, 4294967295u, 4294967295u), vec4<f32>(2746f, -482f, -1000f, 353f), vec4<bool>(false, true, true, true)), Struct_1(0u, vec3<u32>(13655u, 1u, 34352u), vec4<f32>(-1575f, -714f, 2339f, 1677f), vec4<bool>(true, false, true, false)));

var<private> global3: vec3<i32> = vec3<i32>(-1969i, 35666i, -1i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_1 = abs(-vec3<i32>(u_input.b.x, 31958i, -(-1i << (arg_0.a.a % 32u))));
    global0 = 0u;
    let var_2 = ~reverseBits(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 12706u, u_input.a, 13465u) | vec4<u32>(12952u, 4294967295u, 28670u, 18489u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_0.a.b.x, 4294967295u, arg_0.a.b.x), vec4<u32>(19295u, 59703u, 4294967295u, u_input.a))));
    global1 = array<Struct_2, 17>();
    return all(select(arg_0.a.d.yyx, !vec3<bool>(arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x), arg_0.a.d.xyw));
}

fn func_2() -> f32 {
    let var_0 = countOneBits(abs(vec3<i32>(~_wgslsmith_mod_i32(1i, 20675i), global3.x, min(u_input.b.x, -global3.x))));
    var var_1 = Struct_1(u_input.d, vec3<u32>(u_input.a, ~74320u, u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1121f, _wgslsmith_f_op_f32(min(839f, 874f)), 954f, _wgslsmith_f_op_f32(f32(-1f) * -372f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-763f, -810f, 281f, -764f)))))))), vec4<bool>(!(!func_3(Struct_2(global2[_wgslsmith_index_u32(68751u, 5u)], vec2<f32>(2246f, 706f)))), all(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, true)), true));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_1.c)) - _wgslsmith_f_op_vec4_f32(var_1.c + vec4<f32>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)))))))));
    var var_3 = vec4<bool>(var_2.x >= _wgslsmith_f_op_f32(-var_1.c.x), any(select(var_1.d.zy, var_1.d.yx, true)), !(false && all(select(var_1.d, var_1.d, vec4<bool>(false, var_1.d.x, var_1.d.x, var_1.d.x)))), true);
    let var_4 = global2[_wgslsmith_index_u32(4294967295u, 5u)];
    return _wgslsmith_f_op_f32(f32(-1f) * -498f);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec3<bool>) -> Struct_1 {
    global0 = 1u;
    var var_0 = 115160u;
    var var_1 = ~abs(u_input.d);
    global0 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, ~arg_1.x) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(57320u, 0u, 1u, 0u), abs(vec4<u32>(u_input.a, u_input.a, u_input.d, 0u))) % 32u), 1u) ^ 8479u;
    var var_2 = ~arg_1.wz;
    return Struct_1(~(~(~abs(var_2.x))), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, var_2.x, 0u)) & _wgslsmith_mod_vec3_u32(arg_1.xww, arg_1.wzy), (arg_1.xxw | arg_1.yxx) & vec3<u32>(var_2.x, arg_1.x, 4294967295u)), ~vec3<u32>(_wgslsmith_div_u32(60453u, 4294967295u), 76u, _wgslsmith_dot_vec2_u32(vec2<u32>(63768u, 4294967295u), vec2<u32>(arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1476f, arg_0.x, -538f) + vec4<f32>(1199f, -2166f, arg_0.x, 1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -680f, 366f, arg_0.x) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, arg_0.x, -1306f, arg_0.x)))))), vec4<bool>(!(~u_input.a <= _wgslsmith_sub_u32(var_2.x, 33742u)), all(vec4<bool>(false, all(vec4<bool>(arg_2.x, arg_2.x, true, true)), arg_2.x, 34117u > u_input.d)), (~arg_1.x <= countOneBits(19052u)) != arg_2.x, 60960u > countOneBits(u_input.d)));
}

fn func_1() -> f32 {
    let var_0 = global3.x;
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1787f, -602f, _wgslsmith_f_op_f32(f32(-1f) * -486f)))), vec3<f32>(209f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(478f)), _wgslsmith_f_op_f32(func_2()), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1238f) - _wgslsmith_f_op_f32(f32(-1f) * -1100f))))), ~vec4<u32>(abs(u_input.d ^ u_input.d), u_input.a, ~89751u | u_input.d, _wgslsmith_dot_vec3_u32(~vec3<u32>(2925u, u_input.a, 44791u), vec3<u32>(4294967295u, 4294967295u, u_input.a) << (vec3<u32>(0u, 0u, 27656u) % vec3<u32>(32u)))), vec3<bool>(u_input.b.x < global3.x, true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), true))));
    var var_2 = vec4<bool>(any(select(select(var_1.d, vec4<bool>(var_1.d.x, var_1.d.x, var_1.d.x, false), true), !var_1.d, any(select(var_1.d.zxz, vec3<bool>(false, false, true), false)))), ~(~max(42002u, u_input.d)) == _wgslsmith_dot_vec2_u32(vec2<u32>(min(u_input.d, u_input.a), firstTrailingBit(28077u)), _wgslsmith_add_vec2_u32(var_1.b.yz, vec2<u32>(u_input.a, 1u)) >> (~vec2<u32>(var_1.b.x, 17325u) % vec2<u32>(32u))), var_1.d.x, !(!var_1.d.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1063f - func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_1.c.x, var_1.c.x)), ~vec4<u32>(var_1.b.x, 0u, 10523u, var_1.a), select(vec3<bool>(true, false, false), var_2.yzw, vec3<bool>(true, true, var_1.d.x))).c.x))));
    var var_4 = ~var_1.a;
    return var_1.c.x;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> StorageBuffer {
    let var_0 = vec4<bool>(!arg_0.d.x, _wgslsmith_f_op_f32(func_1()) != _wgslsmith_f_op_f32(floor(417f)), any(arg_0.d.yw) & arg_0.d.x, arg_0.d.x);
    let var_1 = global1[_wgslsmith_index_u32(12663u, 17u)];
    var var_2 = 0u;
    let var_3 = ~(arg_1.x << (abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.a.b.x, arg_1.x, 4294967295u), ~vec3<u32>(arg_0.b.x, 0u, arg_0.a))) % 32u));
    global2 = array<Struct_1, 5>();
    return StorageBuffer(arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_1(~4294967295u, vec3<u32>(~(~u_input.a), 6203u, u_input.d), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(107f, -968f, -1132f, -1432f))), vec4<f32>(_wgslsmith_f_op_f32(floor(-848f)), _wgslsmith_f_op_f32(-304f * -3087f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(278f, -1014f)), any(vec2<bool>(true, true)))), vec4<bool>(true, true, true, true)), abs(_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.a, 4294967295u), vec4<u32>(1717u, u_input.a, 1u, 57979u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.d, 0u, u_input.d), vec4<u32>(0u, 1u, u_input.d, u_input.d)))));
}

