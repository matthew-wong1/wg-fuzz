struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, 1u, 1u, 759f);

var<private> global1: array<i32, 6> = array<i32, 6>(0i, -51006i, 0i, 1i, -33762i, i32(-2147483648));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(i32(-2147483648), 4294967295u, 73844u, -398f), Struct_1(1835i, 29919u, 0u, -167f), Struct_1(-32720i, 1u, 33191u, 729f), Struct_1(-47618i, 43504u, 25365u, 765f), Struct_1(1i, 31798u, 88434u, 1205f), Struct_1(32975i, 25652u, 1u, -545f));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = ~vec2<i32>(-34812i, ~43144i) | u_input.a.yz;
    var var_1 = Struct_1(25259i | (((i32(-1i) * -1i) << (1u % 32u)) | countOneBits(select(global0.a, arg_0.a, false))), 1u, 4294967295u, _wgslsmith_div_f32(-623f, arg_2.d));
    var var_2 = select(!vec2<bool>(!select(true, false, true), false), !vec2<bool>(any(vec2<bool>(true, false)), any(vec4<bool>(false, false, false, true))), vec2<bool>(true, true));
    let var_3 = !select(vec4<bool>(var_2.x, all(!vec3<bool>(false, var_2.x, true)), var_2.x, true), select(!vec4<bool>(false, var_2.x, true, false), !select(vec4<bool>(var_2.x, true, true, var_2.x), vec4<bool>(true, var_2.x, true, true), var_2.x), vec4<bool>(global0.d == var_1.d, all(vec4<bool>(var_2.x, var_2.x, true, false)), true, var_2.x)), all(vec4<bool>(any(vec2<bool>(false, var_2.x)), true, select(var_2.x, true, false), var_2.x && true)));
    return countOneBits(~(~4294967295u));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(Struct_1(firstTrailingBit(global1[_wgslsmith_index_u32(select(global2.b, 1u, false), 6u)]), global2.b, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_0, arg_0, arg_0), global2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d, global0.d)))), _wgslsmith_mult_u32(_wgslsmith_div_u32(15757u, global2.c), 41207u), Struct_1(~(global0.a >> (4294967295u % 32u)), ~50527u, 4294967295u, -1304f)), arg_0), 6u)];
    global0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a), ~min(vec3<i32>(u_input.a.x, -3099i, u_input.a.x), vec3<i32>(global1[_wgslsmith_index_u32(1u, 6u)], global2.a, global2.a))), max(global2.a, 0i)), arg_0, select(arg_0, global0.b, (global0.a << (u_input.b.x % 32u)) != var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.d)) - _wgslsmith_f_op_f32(abs(var_1.d)))));
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.b.yw, vec2<u32>(arg_0, var_1.c)), u_input.b.x, countOneBits(1u)) ^ global2.b, 6u)];
    var var_2 = !(!vec3<bool>(true, false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)))));
    return global3[_wgslsmith_index_u32(global2.b, 6u)];
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.b, u_input.b), 6u)];
    let var_1 = global3[_wgslsmith_index_u32(~44735u, 6u)];
    global2 = func_2(_wgslsmith_sub_u32(min(_wgslsmith_div_u32(31983u, func_2(global0.b).c), max(arg_1.b ^ 25133u, ~global2.c)), u_input.b.x));
    global2 = arg_1;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-458f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, var_0.d) * _wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-622f + 1000f)), var_0.d) - vec4<f32>(526f, -234f, _wgslsmith_div_f32(global0.d, -495f), arg_1.d)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-737f, -465f, -918f, -1011f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d, 110f, -154f, -105f) * vec4<f32>(var_0.d, 832f, 1706f, var_1.d))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, -537f, global2.d, var_1.d) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(669f, 176f, arg_1.d, var_0.d), vec4<f32>(global2.d, -828f, -846f, global2.d), arg_0))))));
    return global3[_wgslsmith_index_u32(~31824u ^ max(var_0.c, 1u ^ arg_1.c), 6u)];
}

fn func_1() -> Struct_1 {
    var var_0 = select(!(281f < _wgslsmith_f_op_f32(-global0.d)), true, 601f < _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1397f)), -250f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) - global2.d)));
    global2 = Struct_1(global1[_wgslsmith_index_u32(~global0.b, 6u)], 45296u, _wgslsmith_clamp_u32(40929u, u_input.b.x, reverseBits(firstTrailingBit(47240u))), global0.d);
    global2 = func_4(true != any(vec4<bool>(false, true, all(vec3<bool>(true, true, true)), true)), func_2(31339u));
    var var_1 = vec3<i32>(u_input.a.x, ~1i, global0.a);
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(func_3(Struct_1(~26214i, ~u_input.b.x, ~0u, _wgslsmith_f_op_f32(f32(-1f) * -178f)), ~0u, Struct_1(_wgslsmith_clamp_i32(-1i, -18977i, global2.a), ~4294967295u, _wgslsmith_sub_u32(global0.c, u_input.b.x), 521f)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(50241u, 41586u), 1u, global2.b), ~0u), _wgslsmith_mult_u32(4294967295u, 0u) >> ((_wgslsmith_add_u32(u_input.b.x, global2.b) & ~global2.b) % 32u)), u_input.b.wzx);
    return global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(3776u, global2.c, ~58692u), u_input.b.wxy), u_input.b.wzz), 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = false;
    var var_1 = func_4(true, func_2(firstTrailingBit(4294967295u)));
    let var_2 = global0.d;
    global2 = func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(82326u, 10548u, _wgslsmith_div_u32(max(global0.c, var_1.c), ~global2.c)), u_input.b.zzw));
    var_1 = func_1();
    var var_3 = func_1();
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a & var_3.a, -global2.a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1401f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(417f - -1486f))))), _wgslsmith_dot_vec2_u32(u_input.b.zz, _wgslsmith_mod_vec2_u32(u_input.b.wy, ~u_input.b.yz) << (~_wgslsmith_clamp_vec2_u32(u_input.b.yw, vec2<u32>(global0.b, 1u), vec2<u32>(124342u, global0.b)) % vec2<u32>(32u))));
}

