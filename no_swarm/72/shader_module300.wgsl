struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, i32(-2147483648), 2147483647i);

var<private> global1: array<u32, 21>;

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<u32>(24241u, 0u), vec4<f32>(-460f, 997f, -881f, -1549f)), Struct_1(vec2<u32>(8827u, 0u), vec4<f32>(1175f, 934f, -1074f, 1202f)), Struct_1(vec2<u32>(8896u, 4294967295u), vec4<f32>(843f, -140f, 175f, 1137f)), Struct_1(vec2<u32>(69820u, 4294967295u), vec4<f32>(200f, -585f, -473f, 1000f)), Struct_1(vec2<u32>(56616u, 15746u), vec4<f32>(827f, 1699f, 406f, 865f)), Struct_1(vec2<u32>(0u, 1u), vec4<f32>(1334f, 544f, 691f, -727f)), Struct_1(vec2<u32>(0u, 1u), vec4<f32>(-1200f, -1082f, -900f, 1679f)), Struct_1(vec2<u32>(1u, 7944u), vec4<f32>(-1036f, 437f, -977f, -1150f)), Struct_1(vec2<u32>(4294967295u, 1u), vec4<f32>(1000f, 117f, -269f, -1287f)), Struct_1(vec2<u32>(1u, 0u), vec4<f32>(-673f, -2537f, 1851f, -1009f)), Struct_1(vec2<u32>(17958u, 85073u), vec4<f32>(462f, 941f, -1000f, 2377f)), Struct_1(vec2<u32>(117314u, 4294967295u), vec4<f32>(-706f, -322f, 1000f, -799f)), Struct_1(vec2<u32>(0u, 4294967295u), vec4<f32>(2605f, 1372f, -604f, -102f)), Struct_1(vec2<u32>(4294967295u, 54889u), vec4<f32>(-239f, 569f, 300f, 986f)), Struct_1(vec2<u32>(0u, 69751u), vec4<f32>(870f, 707f, -627f, 314f)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(max(max(arg_0.x, 59528u >> (arg_0.x % 32u)), min(u_input.b.x, ~1u)), 21u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~18991u, global1[_wgslsmith_index_u32(4294967295u, 21u)]), 21u)] & global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.x, 1u), 21u)], ~35341u, true), 21u)]) ^ _wgslsmith_clamp_u32(24680u, 0u, ~0u), 15u)];
    global2 = array<Struct_1, 15>();
    var var_1 = Struct_1(var_0.a, var_0.b);
    let var_2 = u_input.a.x;
    return 14787i;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(arg_0.b.x + var_0.b.x);
    let var_2 = func_3(~(~vec3<u32>(46617u ^ global1[_wgslsmith_index_u32(u_input.b.x, 21u)], _wgslsmith_sub_u32(15312u, global1[_wgslsmith_index_u32(var_0.a.x, 21u)]), 4294967295u)), vec4<i32>(global0.x, 1i, -2147483647i & (global0.x | reverseBits(-2273i)), -2361i));
    let var_3 = select(select(vec3<bool>(any(vec3<bool>(true, true, true)), true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))), any(vec3<bool>(true, true, true))), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1, var_0.b.x), var_1) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1270f))) == 1925f);
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(25667u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, var_0.a.x), vec3<u32>(var_0.a.x, 4058u, 41262u)), arg_0.a.x), 21u)]) & (select(_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(4294967295u, arg_0.a.x)), var_0.a | u_input.b, select(var_3.xx, vec2<bool>(var_3.x, var_3.x), false)) & var_0.a), ~arg_0.a), 15u)];
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = select(select(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), all(vec4<bool>(true, true, true, false))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), false), select(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))))), select(!select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, true)), vec2<bool>(true, !(arg_2.b.x <= -1130f)), !select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true)), true);
    var var_1 = 0u;
    var var_2 = false;
    global0 = _wgslsmith_div_vec3_i32(u_input.a, -arg_1.wwz);
    let var_3 = Struct_1(firstLeadingBit(arg_2.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(func_2(Struct_1(vec2<u32>(4294967295u, 0u), vec4<f32>(arg_2.b.x, arg_2.b.x, -637f, arg_2.b.x)), _wgslsmith_clamp_vec2_i32(global0.yy, global0.yy, vec2<i32>(2147483647i, global0.x))).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, 1000f, arg_2.b.x, arg_2.b.x))))), arg_2.b, !vec4<bool>(select(true, var_0.x, false), true | var_0.x, any(vec2<bool>(true, var_0.x)), true))));
    return firstLeadingBit(abs(reverseBits(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(2918u, 0u, var_3.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 1u, 27955u), vec3<u32>(4294967295u, arg_2.a.x, 1u))))));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    let var_0 = 21689i;
    let var_1 = func_4(~(-2147483647i), vec4<i32>(1i, global0.x, -57202i >> (min(0u, 1u) % 32u), ~(-19587i)), func_2(Struct_1(abs(u_input.b), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, 178f, -491f), vec4<f32>(2055f, arg_0, arg_0, arg_0))), u_input.a.yy)) << (_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(8734u, 4294967295u, 26260u, u_input.b.x), vec4<u32>(4294967295u, 13127u, 0u, u_input.b.x)), global1[_wgslsmith_index_u32(~2439u, 21u)], _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], 25594u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(32209u, 21u)], 5906u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.c, 50021u))), vec3<u32>(global1[_wgslsmith_index_u32(u_input.c, 21u)] | 0u, func_4(var_0, vec4<i32>(3672i, global0.x, u_input.e.x, 1i), global2[_wgslsmith_index_u32(55685u, 15u)]).x, global1[_wgslsmith_index_u32(39800u, 21u)] ^ u_input.b.x) >> (vec3<u32>(_wgslsmith_clamp_u32(24038u, u_input.c, 69221u), ~4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(83489u, 21u)], 21u)], 71795u), vec3<u32>(79603u, 11406u, u_input.b.x)), 21u)]) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_2 = func_2(func_2(func_2(Struct_1(~var_1.yz, _wgslsmith_f_op_vec4_f32(vec4<f32>(-178f, arg_0, 204f, arg_0) + vec4<f32>(arg_0, 1975f, arg_0, 581f))), global0.zx), select(vec2<i32>(global0.x | u_input.a.x, -1i), (u_input.e >> (vec2<u32>(0u, var_1.x) % vec2<u32>(32u))) ^ ~u_input.e, vec2<bool>(true, true))), reverseBits(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(global0.x, 30129i), global0.zx, vec2<bool>(false, true)), global0.xy, vec2<i32>(64237i, -33715i)) >> (vec2<u32>(var_1.x ^ 1u, u_input.c) % vec2<u32>(32u))));
    let var_3 = global2[_wgslsmith_index_u32(1u, 15u)];
    global2 = array<Struct_1, 15>();
    return !(!vec4<bool>(true, false, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<u32>(u_input.b.x, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1614f, 1000f, 902f, 264f))))));
    global2 = array<Struct_1, 15>();
    let var_1 = func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(273f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1766f, var_0.b.x, false)) * _wgslsmith_f_op_f32(106f - -512f))))));
    global0 = vec3<i32>(-4980i, global0.x, u_input.d) << (~vec3<u32>(_wgslsmith_mult_u32(reverseBits(global1[_wgslsmith_index_u32(6002u, 21u)]), ~var_0.a.x), select(53739u, ~0u, false), u_input.c ^ select(u_input.b.x, var_0.a.x, false)) % vec3<u32>(32u));
    var_0 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.a.x, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.x, 21u)], 21u)]), 21u)] >> (_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(var_0.a.x, 21u)], u_input.b.x) % 32u)), u_input.b.x >> (_wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_add_vec2_u32(var_0.a, vec2<u32>(4294967295u, 35922u))) % 32u)) | 3413u, 21u)], 15u)];
    var var_2 = 201f;
    let var_3 = func_2(global2[_wgslsmith_index_u32(~9271u, 15u)], global0.zx);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstTrailingBit(4294967295u), 0u, u_input.c), -_wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-1i, global0.x, u_input.d, -2147483647i), vec4<i32>(-5087i, global0.x, -1i, global0.x)), ~vec4<i32>(-29693i, u_input.a.x, 23104i, -45794i) | ~vec4<i32>(u_input.d, 5901i, global0.x, u_input.a.x), vec4<i32>(1i, firstLeadingBit(33129i), ~2082i, -2147483647i)), _wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(550f)))))), abs(~u_input.a));
}

