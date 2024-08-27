struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 16>;

var<private> global1: array<f32, 3>;

var<private> global2: array<f32, 21> = array<f32, 21>(342f, -587f, 1263f, -536f, -119f, 310f, 1205f, -195f, 832f, 471f, 1000f, 746f, -509f, -474f, -1614f, -1000f, 292f, 856f, 1199f, -240f, 408f);

var<private> global3: u32 = 34881u;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(~0u, 16u)], Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(54008u, 3u)])))), global0[_wgslsmith_index_u32(abs(u_input.d.x), 16u)], _wgslsmith_clamp_vec3_i32(-u_input.a.wwz, abs(max(u_input.a.zxz, vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x))), vec3<i32>(countOneBits(u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, -2147483647i), u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-316f, -233f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-247f - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 21u)])) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 21u)] - 698f), _wgslsmith_f_op_f32(117f - 1293f))))), ~(firstLeadingBit(u_input.d.wxx) ^ _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.e, 63127u)), abs(u_input.b))));
    let var_1 = !select(!vec3<bool>(var_0.a.x, true, var_0.a.x), select(vec3<bool>(!var_0.b.b.x, global2[_wgslsmith_index_u32(0u, 21u)] > 1336f, !var_0.a.x), !select(vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(true, var_0.b.b.x, false), false), !(!vec3<bool>(var_0.b.b.x, var_0.a.x, var_0.a.x))), all(vec3<bool>(all(vec4<bool>(var_0.b.b.x, var_0.a.x, var_0.b.b.x, true)), true, var_0.a.x)));
    var var_2 = ~2147483647i;
    var var_3 = ~abs(u_input.e);
    var_3 = firstTrailingBit(countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(76030u, var_0.d.x), vec2<u32>(var_0.d.x, 0u))) | _wgslsmith_sub_u32(75789u, 8558u));
    return var_0.a.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_4) -> f32 {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.d.x, 19284u, u_input.b.x, 1u), u_input.d, ~u_input.d), (u_input.d ^ ~u_input.d) << (~(u_input.d | u_input.d) % vec4<u32>(32u))), ~_wgslsmith_mod_u32(min(~1u, u_input.b.x), firstLeadingBit(29091u)));
    let var_1 = _wgslsmith_mult_u32(0u, arg_2.d.x);
    let var_2 = _wgslsmith_mult_u32(firstLeadingBit(6440u), _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(var_0.x, _wgslsmith_mult_u32(4294967295u, u_input.c), _wgslsmith_sub_u32(u_input.b.x, var_1), u_input.b.x))) & 1u;
    global0 = array<vec2<bool>, 16>();
    global1 = array<f32, 3>();
    return -666f;
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(vec4<bool>(~u_input.b.x <= (u_input.e & 46679u), select(true, func_3(), false), false, false), Struct_2(Struct_1(2281f), select(select(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], false), vec2<bool>(true, true), vec2<bool>(true, true)), ~(-vec3<i32>(489i, -16000i, u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global2[_wgslsmith_index_u32(u_input.b.x, 21u)]) - vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 3u)], -425f)))), Struct_4(select(select(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], vec2<bool>(true, true), vec2<bool>(true, false)), select(global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), true), Struct_2(Struct_1(global2[_wgslsmith_index_u32(41615u, 21u)]), global0[_wgslsmith_index_u32(u_input.c, 16u)], -u_input.a.xyw, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], -1084f)))), Struct_1(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(18177u, 21u)], 865f)), select(u_input.b, vec3<u32>(u_input.d.x, u_input.e, u_input.e), true)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1016f + 116f), global2[_wgslsmith_index_u32(13262u, 21u)])))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(15883u, 21u)])));
    global3 = _wgslsmith_dot_vec4_u32(~abs(_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(u_input.c, u_input.d.x, 36606u, 4294967295u), u_input.d)) & ~u_input.d, ~(abs(firstLeadingBit(u_input.d)) << (select(~vec4<u32>(u_input.d.x, 60141u, 30250u, u_input.e), vec4<u32>(41227u, u_input.c, u_input.b.x, u_input.d.x) << (vec4<u32>(u_input.d.x, u_input.e, u_input.c, 4294967295u) % vec4<u32>(32u)), vec4<bool>(false, true, false, false)) % vec4<u32>(32u))));
    let var_3 = Struct_2(Struct_1(var_1.x), !vec2<bool>(2147483647i != _wgslsmith_mult_i32(1i, u_input.a.x), true), abs(~(-u_input.a.wzy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(1000f, -357f)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.e, 3u)], global2[_wgslsmith_index_u32(1u, 21u)])))))));
    return ~vec3<i32>(-1i, var_3.c.x, max(var_3.c.x, u_input.a.x));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    var var_0 = u_input.a.x << (arg_0 % 32u);
    global0 = array<vec2<bool>, 16>();
    global3 = ~0u;
    let var_1 = 1u;
    var var_2 = func_2();
    return arg_3;
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    global1 = array<f32, 3>();
    var var_0 = reverseBits(~(~(~u_input.e)) << (15809u % 32u));
    var_0 = ~u_input.c;
    var var_1 = false;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 21u)])))), select(!select(vec2<bool>(true, false), global0[_wgslsmith_index_u32(u_input.e, 16u)], true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), true), global0[_wgslsmith_index_u32(83279u, 16u)]), -min(vec3<i32>(u_input.a.x, ~19340i, 65653i >> (u_input.d.x % 32u)), ~u_input.a.zxx >> (~vec3<u32>(7545u, u_input.d.x, u_input.c) % vec3<u32>(32u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 21u)] + -292f), global2[_wgslsmith_index_u32(select(u_input.b.x, u_input.e, true), 21u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1806f, arg_0.a.a) * vec2<f32>(-1195f, arg_0.a.a))), true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1012f, arg_0.a.a)) - _wgslsmith_div_vec2_f32(vec2<f32>(-371f, -1203f), vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 3u)], arg_0.a.a))), vec2<f32>(-110f, global1[_wgslsmith_index_u32(abs(u_input.d.x), 3u)]))));
    return func_1(_wgslsmith_mod_u32(~firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.d.xzx, u_input.b)), 50455u), vec2<bool>(var_2.b.x, select(all(vec2<bool>(true, false)), var_2.b.x, var_2.b.x)), var_2.b.x, func_1((max(0u, 0u) >> (u_input.b.x % 32u)) << (countOneBits(~27365u) % 32u), select(select(select(global0[_wgslsmith_index_u32(u_input.d.x, 16u)], var_2.b, var_2.b), select(var_2.b, var_2.b, false), !vec2<bool>(var_2.b.x, var_2.b.x)), !(!global0[_wgslsmith_index_u32(u_input.d.x, 16u)]), var_2.b.x), !(!all(vec2<bool>(true, false))), func_1(_wgslsmith_mult_u32(62509u, u_input.c), !select(var_2.b, var_2.b, var_2.b.x), any(var_2.b), arg_0))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 16>();
    global0 = array<vec2<bool>, 16>();
    global1 = array<f32, 3>();
    var var_0 = Struct_4(vec2<bool>(true, true || all(!global0[_wgslsmith_index_u32(4294967295u, 16u)])), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(22521u, 3u)]) + _wgslsmith_f_op_f32(801f * global2[_wgslsmith_index_u32(0u, 21u)]))), vec2<bool>(!any(vec3<bool>(true, true, false)), true), u_input.a.wxx << (u_input.b % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 21u)], global1[_wgslsmith_index_u32(0u, 3u)]))) + vec2<f32>(global1[_wgslsmith_index_u32(countOneBits(1u), 3u)], _wgslsmith_f_op_f32(min(897f, global1[_wgslsmith_index_u32(u_input.d.x, 3u)]))))), func_5(func_1(u_input.e, vec2<bool>(all(global0[_wgslsmith_index_u32(u_input.e, 16u)]), any(global0[_wgslsmith_index_u32(22184u, 16u)])), false, Struct_3(Struct_1(217f)))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(0u, 1u, u_input.e, 0u)), firstTrailingBit(u_input.c)), vec2<u32>(u_input.b.x | u_input.c, select(130075u, u_input.e, false))), abs(reverseBits(u_input.b.x)), ~_wgslsmith_mult_u32(u_input.d.x, ~u_input.c)));
    let var_1 = Struct_2(func_1(~_wgslsmith_sub_u32(reverseBits(60718u), 13414u), select(global0[_wgslsmith_index_u32(~(~20435u), 16u)], select(select(var_0.b.b, vec2<bool>(true, true), vec2<bool>(var_0.a.x, true)), !vec2<bool>(var_0.a.x, true), func_3()), false), select(var_0.a.x, !var_0.b.b.x, false), Struct_3(Struct_1(_wgslsmith_f_op_f32(floor(-1159f))))).a, !(!(!var_0.b.b)), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, ~firstTrailingBit(vec4<i32>(-2650i, 15552i, u_input.a.x, -86783i))), abs(_wgslsmith_mult_i32(max(var_0.b.c.x, -1i), var_0.b.c.x)), _wgslsmith_mult_i32(~var_0.b.c.x, firstTrailingBit(_wgslsmith_mult_i32(var_0.b.c.x, 0i)))), _wgslsmith_f_op_vec2_f32(floor(var_0.b.d)));
    let var_2 = select(select(vec2<bool>(var_0.b.b.x, all(var_1.b)), global0[_wgslsmith_index_u32(0u, 16u)], false), var_0.b.b, var_1.b);
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(select(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.d, u_input.b), vec3<u32>(0u, var_0.d.x, var_0.d.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.d, u_input.d.zyy), ~var_0.d), !vec3<bool>(var_0.a.x, var_1.b.x, false)), max(firstTrailingBit(min(vec3<u32>(0u, u_input.d.x, u_input.b.x), vec3<u32>(var_0.d.x, 1u, u_input.d.x))), ~(~vec3<u32>(u_input.e, u_input.b.x, u_input.d.x)))), var_1.c, ~abs(select(~vec2<i32>(-1i, var_3.x), var_0.b.c.xx, var_2)), vec2<u32>(countOneBits(_wgslsmith_add_u32(var_0.d.x, 20046u)), ~_wgslsmith_sub_u32(~u_input.b.x, u_input.b.x | u_input.e)));
}

