struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(false, false, true, true, false, true);

var<private> global1: vec3<f32>;

var<private> global2: u32 = 25261u;

var<private> global3: Struct_1;

var<private> global4: f32 = -340f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-492f, 2064f, global1.x)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-138f, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, 1000f, global1.x))))))))));
    let var_0 = !global3.b;
    global4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1539f))));
    let var_1 = min(firstTrailingBit(u_input.b.x), countOneBits(1u));
    global0 = array<bool, 6>();
    return select(vec3<bool>(select(true, true, !(global1.x > global1.x)), false, any(vec2<bool>(false, !global0[_wgslsmith_index_u32(u_input.b.x, 6u)]))), select(vec3<bool>(false, all(vec2<bool>(global0[_wgslsmith_index_u32(global3.a.x, 6u)], var_0)), select(true, true, global0[_wgslsmith_index_u32(0u, 6u)] != false)), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 6u)], true, true), vec3<bool>(global3.b, false, global3.b), global3.b), select(!vec3<bool>(global0[_wgslsmith_index_u32(27460u, 6u)], true, false), !vec3<bool>(var_0, false, false), all(vec2<bool>(false, global3.b))), false), select(vec3<bool>(any(vec4<bool>(global3.b, false, global3.b, false)), var_0 && var_0, all(vec2<bool>(true, true))), !vec3<bool>(global3.b, var_0, global3.b), true)), select(select(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(global3.a.x, 6u)]), vec3<bool>(var_0, global0[_wgslsmith_index_u32(global3.a.x, 6u)], global0[_wgslsmith_index_u32(75161u, 6u)]), global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), select(select(vec3<bool>(global0[_wgslsmith_index_u32(122349u, 6u)], true, true), vec3<bool>(var_0, var_0, global0[_wgslsmith_index_u32(var_1, 6u)]), vec3<bool>(true, true, false)), select(vec3<bool>(global3.b, true, var_0), vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(global3.a.x, 6u)], global3.b, true), vec3<bool>(global0[_wgslsmith_index_u32(global3.a.x, 6u)], global3.b, false), global0[_wgslsmith_index_u32(27183u, 6u)])), any(vec4<bool>(true, false, false, var_0))), vec3<bool>(global3.b, !(!global0[_wgslsmith_index_u32(32032u, 6u)]), true), select(!vec3<bool>(false, var_0, global0[_wgslsmith_index_u32(38420u, 6u)]), !vec3<bool>(global0[_wgslsmith_index_u32(46532u, 6u)], global3.b, global3.b), _wgslsmith_mod_u32(var_1, 5174u) >= (4294967295u ^ global3.a.x))));
}

fn func_2() -> Struct_1 {
    let var_0 = ~global3.a.x;
    let var_1 = func_3();
    let var_2 = Struct_1(global3.a | global3.a, true, ~(-max(78411i, 10191i)), 1i);
    var var_3 = u_input.a;
    global0 = array<bool, 6>();
    return Struct_1(~(~(~(~u_input.d))), any(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(var_2.a.x, 6u)], true), var_1, var_1), !var_1, var_1.x)), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(-68736i, global3.c, global3.c, global3.c), vec4<i32>(global3.c, 2147483647i, var_2.c, global3.d)) | -20378i), countOneBits(max(firstLeadingBit(firstLeadingBit(15719i)), i32(-1i) * -30497i)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = select(vec2<bool>(global3.b && !any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(f32(-1f) * -185f))) >= 1617f), select(vec2<bool>(true | global3.b, global3.b & arg_1.b), vec2<bool>(global3.b, true), func_2().b), vec2<bool>(all(!vec3<bool>(arg_1.b, arg_2, arg_1.b)), true));
    let var_1 = 2336f;
    global4 = var_1;
    var var_2 = Struct_1(countOneBits(_wgslsmith_mod_vec3_u32(~global3.a, global3.a)), arg_2 && !(_wgslsmith_f_op_f32(-global1.x) == 2945f), -19097i, ~u_input.e.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(global1.zz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))));
    return !arg_2;
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<i32>(-u_input.c, -abs(global3.c), min(i32(-1i) * -1i, 1i), 1i);
    let var_1 = true;
    let var_2 = !vec4<bool>(any(!(!vec2<bool>(global0[_wgslsmith_index_u32(25571u, 6u)], global0[_wgslsmith_index_u32(global3.a.x, 6u)]))), func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(global3.a.x, u_input.d.x, u_input.b.x), vec3<u32>(56924u, 83030u, 0u)) ^ ~u_input.d, func_2(), all(select(vec4<bool>(true, true, var_1, global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), vec4<bool>(global3.b, global3.b, true, false), true))), select(!func_2().b, global3.b, false), true);
    global4 = -1000f;
    var var_3 = vec3<bool>(true, any(select(!select(vec3<bool>(var_2.x, global3.b, var_1), vec3<bool>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(global3.a.x, 6u)], global3.b), var_1), !vec3<bool>(var_1, var_2.x, true), vec3<bool>(any(vec2<bool>(var_1, false)), u_input.d.x > u_input.b.x, true))), all(vec2<bool>(true, global3.b)));
    return Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.d.yx, global3.a.xx) ^ _wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.zy), ~global3.a.x), _wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(global3.a, vec3<u32>(u_input.b.x, u_input.d.x, u_input.d.x)), global3.a)), select(global0[_wgslsmith_index_u32(~(global3.a.x | u_input.b.x), 6u)] || true, global3.b, var_2.x), -1i, _wgslsmith_mult_i32(max(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.x, 5645i), reverseBits(global3.c)), ~2147483647i), select(~(-2147483647i), global3.d, !any(var_2))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = global3.b;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x + global1.x))) - 319f);
    var var_1 = func_5(func_1(), Struct_1(~_wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(0u, 62449u, 82233u)), func_1().b, -(i32(-1i) * -14879i), -24777i), vec3<bool>(global3.b, all(vec3<bool>(global3.b, global3.b, global0[_wgslsmith_index_u32(1u, 6u)])) | any(select(vec4<bool>(global3.b, true, false, global0[_wgslsmith_index_u32(30511u, 6u)]), vec4<bool>(global3.b, false, global3.b, false), vec4<bool>(global0[_wgslsmith_index_u32(47508u, 6u)], global3.b, false, global3.b))), select(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(11944u, 1u, u_input.b.x, 18562u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, u_input.b.x), vec4<u32>(global3.a.x, u_input.b.x, 68575u, 28658u))), 6u)], global3.b)), func_1());
    var_1 = func_5(func_2(), func_5(func_2(), Struct_1(vec3<u32>(var_1.a.x, _wgslsmith_mod_u32(global3.a.x, 4294967295u), 4294967295u), global3.b, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.e), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e.x, 7918i, global3.d), vec3<i32>(u_input.e.x, global3.c, 47488i))), var_1.d), !select(select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 6u)], global0[_wgslsmith_index_u32(70293u, 6u)], var_1.b), vec3<bool>(var_1.b, true, global0[_wgslsmith_index_u32(1u, 6u)]), true), vec3<bool>(false, false, false), select(true, false, true)), Struct_1(~vec3<u32>(u_input.d.x, 59385u, var_1.a.x) | u_input.d, func_4(max(global3.a, global3.a), Struct_1(vec3<u32>(global3.a.x, 0u, global3.a.x), true, u_input.e.x, u_input.c), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.a.x, 0u), 6u)]), var_1.c, 2147483647i)), select(!(!(!vec3<bool>(var_1.b, true, global3.b))), vec3<bool>(func_2().b, !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d.x, 4294967295u), 6u)], _wgslsmith_f_op_f32(global1.x - global1.x) >= _wgslsmith_f_op_f32(round(583f))), 1783f >= global1.x), Struct_1(vec3<u32>(_wgslsmith_mod_u32(1u, u_input.b.x), 4294967295u, var_1.a.x), true, func_2().d, global3.c));
    let var_2 = Struct_1(~(~(~(vec3<u32>(global3.a.x, 36791u, 37759u) ^ vec3<u32>(0u, 0u, 46372u)))), global3.b, 1i, func_5(Struct_1(vec3<u32>(var_1.a.x, max(63998u, 0u), ~22222u), false, global3.d, u_input.c), Struct_1(~(u_input.d << (vec3<u32>(global3.a.x, 51599u, global3.a.x) % vec3<u32>(32u))), global3.b, countOneBits(1i), countOneBits(max(u_input.c, global3.c))), !(!(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(var_1.a.x, 6u)]))), func_5(func_5(Struct_1(vec3<u32>(28473u, var_1.a.x, 1u), global0[_wgslsmith_index_u32(var_1.a.x, 6u)], global3.d, var_1.d), func_1(), func_3(), func_5(Struct_1(vec3<u32>(0u, 0u, global3.a.x), true, var_1.c, u_input.e.x), Struct_1(vec3<u32>(global3.a.x, var_1.a.x, global3.a.x), true, 25953i, global3.c), vec3<bool>(global3.b, var_1.b, var_1.b), Struct_1(global3.a, global0[_wgslsmith_index_u32(16509u, 6u)], -39407i, 70150i))), func_2(), vec3<bool>(!global0[_wgslsmith_index_u32(0u, 6u)], u_input.b.x > 59699u, var_1.b), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.x, 4294967295u, 1u), u_input.d), global1.x >= 536f, -9258i, u_input.e.x))).c);
    var var_3 = global3.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(-max(-vec4<i32>(var_1.d, u_input.e.x, -2147483647i, global3.d), abs(vec4<i32>(-805i, u_input.a, -2147483647i, 1i)))), var_3.zz, _wgslsmith_f_op_vec2_f32(sign(global1.zy)), _wgslsmith_f_op_f32(round(global1.x)), vec3<i32>(-max(func_5(Struct_1(var_2.a, true, 43624i, -1i), var_2, vec3<bool>(false, var_2.b, false), var_2).c, max(var_1.c, 1i)), ~0i, 8877i));
}

