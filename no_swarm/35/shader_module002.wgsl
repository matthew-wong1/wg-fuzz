struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
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

var<private> global0: Struct_1;

var<private> global1: array<bool, 20> = array<bool, 20>(true, false, false, true, false, true, false, false, false, true, true, true, true, false, true, false, false, true, true, false);

var<private> global2: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.a, global0.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.a, global0.a, false)) + global0.a))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 5345u), vec4<u32>(1u, global2.b.x, 0u, global0.b.x), global2.b), ~vec4<u32>(global0.b.x, 0u, global0.b.x, 1u)), firstLeadingBit(1u), _wgslsmith_sub_u32(0u, global2.b.x), min(~0u, 4294967295u)), _wgslsmith_div_vec4_u32(~vec4<u32>(67227u, global0.b.x, global2.b.x, 1u), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(0u, global0.b.x, 23795u, global0.b.x), global2.b)))), vec4<bool>(!select(!global1[_wgslsmith_index_u32(4294967295u, 20u)], false != global0.c.x, true), global2.c.x, false, global2.c.x));
    global1 = array<bool, 20>();
    let var_1 = var_0.c.x;
    var var_2 = firstLeadingBit(global0.b.yzw);
    global0 = Struct_1(global0.a, (_wgslsmith_div_vec4_u32(global2.b, _wgslsmith_mult_vec4_u32(var_0.b, global0.b)) >> (((global2.b ^ vec4<u32>(global2.b.x, global0.b.x, var_2.x, 56355u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, var_2.x, var_0.b.x, 0u), global2.b)) % vec4<u32>(32u))) | ~vec4<u32>(0u | global0.b.x, min(var_2.x, var_2.x), select(var_2.x, 52332u, global2.c.x), 62015u ^ var_0.b.x), global2.c);
    return vec4<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1325f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(ceil(var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-839f * _wgslsmith_f_op_f32(global2.a.x * global2.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(705f + global0.a.x)))));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())))), firstTrailingBit((global0.b & global2.b) & ~abs(vec4<u32>(1u, 4294967295u, global0.b.x, 0u))), global2.c);
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), -385f))), 899f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + -1338f)), _wgslsmith_div_f32(-1153f, _wgslsmith_f_op_vec4_f32(func_3()).x)), vec4<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(firstTrailingBit(global2.b.xzw), vec3<u32>(global2.b.x, 41850u, global2.b.x) << (vec3<u32>(84030u, 71069u, 92973u) % vec3<u32>(32u))), _wgslsmith_div_u32(var_0.b.x & var_0.b.x, firstTrailingBit(global2.b.x)), _wgslsmith_div_u32(0u, global0.b.x) & global2.b.x) << ((vec4<u32>(0u, 24335u, global2.b.x, _wgslsmith_sub_u32(global2.b.x, global2.b.x)) ^ (vec4<u32>(global2.b.x, 4294967295u, global2.b.x, 12658u) ^ (vec4<u32>(16691u, global2.b.x, global2.b.x, global2.b.x) & var_0.b))) % vec4<u32>(32u)), !select(!(!global0.c), global2.c, false));
    global1 = array<bool, 20>();
    let var_1 = var_0.a;
    global2 = Struct_1(var_0.a, reverseBits(vec4<u32>(var_0.b.x, _wgslsmith_dot_vec3_u32(~var_0.b.xzx, firstLeadingBit(vec3<u32>(1u, 0u, 26222u))), 86134u, ~1u)), global0.c);
    return 2201u;
}

fn func_4(arg_0: i32, arg_1: u32) -> i32 {
    global1 = array<bool, 20>();
    var var_0 = select(vec2<bool>(true, true), global2.c.xy, select(!all(vec3<bool>(false, global0.c.x, global2.c.x)), false, true));
    let var_1 = ~87310u;
    var var_2 = vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, 1u), 20u)], !((true && (arg_1 <= 4294967295u)) & true));
    let var_3 = !global0.c.x;
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = global2.b ^ global0.b;
    let var_1 = abs(~countOneBits(-1i));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), ~reverseBits(countOneBits(global0.b)), !vec4<bool>(any(!arg_2.c.yzy), true, true, true));
    let var_3 = _wgslsmith_f_op_f32(1217f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(1676f + -280f)))))));
    var_0 = ~(~(~_wgslsmith_clamp_vec4_u32(global0.b, vec4<u32>(global2.b.x, arg_2.b.x, 43418u, arg_3.b.x), var_2.b) ^ firstTrailingBit(~vec4<u32>(38768u, 1u, arg_2.b.x, global2.b.x))));
    return select(arg_3.c, !select(vec4<bool>(global1[_wgslsmith_index_u32(arg_3.b.x, 20u)], var_2.c.x | global0.c.x, !arg_3.c.x, global0.c.x), global0.c, !(!var_2.c)), !var_2.c);
}

fn func_1() -> Struct_1 {
    let var_0 = global0.a.x;
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(global2.a.x)), _wgslsmith_f_op_f32(global2.a.x + global2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + -1198f) * _wgslsmith_f_op_f32(-global2.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x - -589f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2114f))), ~global0.b | global0.b, func_5(func_4(0i << (1u % 32u), _wgslsmith_mult_u32(0u, global2.b.x) | func_2()), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_3()).x, 108f, true)))), Struct_1(global2.a, ~vec4<u32>(4294967295u, 4294967295u, global2.b.x, 59214u) & ~vec4<u32>(8291u, 13408u, 0u, 1u), vec4<bool>(!global0.c.x, all(vec3<bool>(true, global0.c.x, global1[_wgslsmith_index_u32(global2.b.x, 20u)])), false, true)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global2.a))), firstLeadingBit(abs(global2.b)), select(global2.c, global0.c, u_input.d.x >= u_input.d.x))));
    var var_2 = select(!select(global0.c, global0.c, global0.c), select(!func_5(2147483647i ^ u_input.c.x, _wgslsmith_f_op_f32(min(-2133f, -735f)), Struct_1(global0.a, vec4<u32>(global0.b.x, 5899u, var_1.b.x, 21155u), global2.c), Struct_1(var_1.a, var_1.b, global0.c)), vec4<bool>(any(global2.c.ywz), true, select(all(global0.c.zyz), true, global1[_wgslsmith_index_u32(0u, 20u)] && var_1.c.x), global1[_wgslsmith_index_u32(4294967295u, 20u)]), false), all(var_1.c.xzz));
    var var_3 = -1i;
    let var_4 = Struct_1(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, global2.a.x)), -1073f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -578f) - _wgslsmith_f_op_f32(804f + -216f)))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 4294967295u, global0.b.x), vec3<u32>(7068u, global2.b.x, var_1.b.x)), 1u), global0.b.x), global0.b.x, 18834u, countOneBits(1u)), vec4<bool>(!all(!global2.c), global2.c.x, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u ^ var_1.b.x, global0.b.x) ^ var_1.b.x, 20u)], false));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_4.a)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1088f, 339f, -106f, -1086f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 1291f, -1374f, global2.a.x))) * vec4<f32>(256f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1063f))), _wgslsmith_f_op_f32(-670f + _wgslsmith_f_op_f32(select(117f, global0.a.x, var_2.x))), global2.a.x)), firstTrailingBit(_wgslsmith_mod_vec4_u32(global0.b, reverseBits(~global0.b))), !select(vec4<bool>(global1[_wgslsmith_index_u32(max(31186u, global0.b.x), 20u)], global2.c.x | true, true, !global0.c.x), func_5(i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(-global2.a.x), Struct_1(global2.a, vec4<u32>(global0.b.x, 4294967295u, 1u, var_4.b.x), vec4<bool>(false, false, true, true)), var_4), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + 154f));
    var var_1 = func_1();
    var var_2 = !select(!vec3<bool>(all(vec3<bool>(false, true, global2.c.x)), any(var_1.c.yy), true), global2.c.yxx, all(var_1.c.zy));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, global0.a.x, -1517f, var_1.a.x))), vec4<f32>(-560f, -172f, _wgslsmith_f_op_f32(abs(-1000f)), 313f))))), vec4<u32>(_wgslsmith_mod_u32(global2.b.x, 4294967295u), 26479u, 64216u, global2.b.x), vec4<bool>(!(true || global1[_wgslsmith_index_u32(_wgslsmith_add_u32(14241u, var_1.b.x), 20u)]), global1[_wgslsmith_index_u32(var_1.b.x, 20u)], any(!vec3<bool>(var_2.x, false, global1[_wgslsmith_index_u32(81067u, 20u)])), false & !any(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 20u)]))));
    var var_3 = vec4<i32>(countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.c.x, 14038i, -1i), u_input.c), min(~vec3<i32>(u_input.a.x, 75369i, 1i), -u_input.d.yyx))), -(i32(-1i) * -44540i), u_input.a.x, 29888i);
    var var_4 = firstTrailingBit(global2.b);
    let var_5 = func_1();
    global0 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, -2147483647i);
}

