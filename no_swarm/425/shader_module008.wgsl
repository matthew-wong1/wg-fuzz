struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: bool,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 1>;

var<private> global2: Struct_2 = Struct_2(Struct_1(453f, -37536i, vec2<i32>(14980i, 1i)));

var<private> global3: array<i32, 21>;

var<private> global4: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = global2.a;
    var var_1 = _wgslsmith_f_op_f32(abs(arg_0.a));
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_f_op_f32(-452f + -701f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), -825f))));
    let var_4 = Struct_2(arg_0);
    return _wgslsmith_mult_u32(~0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(48519u, 4636u, 10066u, 41136u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(34495u, 4294967295u, 1u, 0u), vec4<u32>(0u, 33869u, 88267u, 1u), vec4<u32>(29650u, 105785u, 1u, 88172u)), ~vec4<u32>(41681u, 1u, 1u, 4294967295u)));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    global2 = Struct_2(global4.a);
    global1 = array<vec2<f32>, 1>();
    let var_0 = global2.a.c.x;
    global0 = Struct_1(_wgslsmith_f_op_f32(-892f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-287f * 855f))), firstTrailingBit(u_input.c), -vec2<i32>((u_input.a & global0.c.x) >> (0u % 32u), ~(-2147483647i)));
    var var_1 = ~(vec3<u32>(~10715u, ~1u, ~15661u) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(59253u, 4294967295u), vec2<u32>(4294967295u, 7550u)), 4294967295u, _wgslsmith_sub_u32(38270u, 1u)) % vec3<u32>(32u))) >> ((vec3<u32>(0u, func_3(global2.a), ~(~7924u)) ^ vec3<u32>(~(4294967295u >> (1u % 32u)), firstTrailingBit(abs(65957u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(48316u, 32450u), ~vec2<u32>(4294967295u, 1u)))) % vec3<u32>(32u));
    return all(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: bool) -> Struct_3 {
    let var_0 = !all(select(vec3<bool>(!arg_2, !arg_2, func_2(vec2<f32>(-681f, -636f))), !(!vec3<bool>(false, arg_2, arg_2)), !all(vec4<bool>(arg_2, false, arg_2, arg_2))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(730f + global0.a))), _wgslsmith_f_op_f32(137f + 1102f))), _wgslsmith_f_op_f32(step(-900f, global4.a.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a, 1000f)), vec2<f32>(-315f, _wgslsmith_f_op_f32(f32(-1f) * -1117f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(391f, global2.a.a, _wgslsmith_f_op_f32(722f * _wgslsmith_f_op_f32(f32(-1f) * -151f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(482f)))), arg_0.x))));
    global0 = global4.a;
    let var_3 = 1i;
    return Struct_3(Struct_2(global2.a), vec2<bool>(!((global2.a.b > 0i) && (arg_2 & false)), !func_2(var_2.xw)), (select(func_2(vec2<f32>(var_2.x, var_2.x)), !var_0, any(vec4<bool>(var_0, false, false, arg_2))) & true) || (1i < _wgslsmith_dot_vec3_i32(select(vec3<i32>(10280i, global3[_wgslsmith_index_u32(54197u, 21u)], 28358i), vec3<i32>(global2.a.b, global3[_wgslsmith_index_u32(arg_1, 21u)], -1i), vec3<bool>(true, true, var_0)), vec3<i32>(global2.a.c.x, 1i, global4.a.b))), 4741u << (arg_1 % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(trunc(-1544f)))) * var_1.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(-439f, -global4.a.c.x, vec2<i32>(-7645i, ~global3[_wgslsmith_index_u32(0u, 21u)]) ^ countOneBits(vec2<i32>(-1i, 2147483647i))));
    global2 = Struct_2(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(829f, global0.a, global0.a, global0.a) + vec4<f32>(-622f, -740f, 716f, -1236f)))), ~(~arg_0.d), !(!select(true, true, arg_2))).a.a);
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-847f)))) - _wgslsmith_f_op_f32(-global4.a.a)), ~(-1i), -u_input.b));
    let var_1 = arg_1.a.a;
    let var_2 = (arg_1.d >> (4294967295u % 32u)) > _wgslsmith_mod_u32(~firstLeadingBit(arg_0.d), _wgslsmith_mult_u32(arg_0.d, ~1u));
    return ~(vec3<u32>(arg_0.d, ~_wgslsmith_clamp_u32(0u, arg_1.d, 4294967295u), 69565u) >> (vec3<u32>(func_1(vec4<f32>(arg_0.a.a.a, 403f, -729f, 384f), 12248u & arg_0.d, true).d, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_1.d, 30756u), vec3<u32>(4294967295u, 4294967295u, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.d, arg_1.d, 4294967295u), vec3<u32>(0u, arg_0.d, 0u), vec3<u32>(arg_1.d, arg_1.d, arg_1.d))), ~4654u) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(57650u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(24690u, 30139u))) >> (~vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), 1u);
    var var_1 = vec3<u32>(var_0.x, _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(4294967295u, 1u, var_0.x))), func_4(func_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-235f, global0.a, 687f, -1000f))), ~1u, false), Struct_3(func_1(vec4<f32>(-1053f, -361f, global4.a.a, -2223f), 6974u, false).a, select(vec2<bool>(true, false), vec2<bool>(false, false), true), var_0.x >= 30041u, 18615u, _wgslsmith_f_op_f32(floor(-183f))), func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(135f, global4.a.a, global4.a.a, -1204f), vec4<f32>(global2.a.a, 183f, 603f, global4.a.a), true)), ~var_0.x, true).b.x)), ~22612u);
    let x = u_input.a;
    s_output = StorageBuffer(2084f, firstLeadingBit(var_1.x) & ~22045u, 433f);
}

