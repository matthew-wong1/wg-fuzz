struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: f32;

var<private> global2: array<f32, 29> = array<f32, 29>(-374f, 885f, -1508f, -2106f, 367f, -448f, 1309f, 1000f, -1000f, 2012f, 2220f, 461f, 1000f, -1039f, 1106f, 574f, -1000f, -1000f, 153f, -1155f, -684f, -1041f, 1000f, 673f, 838f, 203f, -627f, 348f, -1000f);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1() -> bool {
    global0 = array<i32, 9>();
    global2 = array<f32, 29>();
    global0 = array<i32, 9>();
    var var_0 = -357f;
    var_0 = global2[_wgslsmith_index_u32(countOneBits(~1u), 29u)];
    return true;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_5) -> f32 {
    var var_0 = Struct_3(64194i, arg_1.d.a, Struct_2(Struct_1(arg_0.b.c.a.a, -vec3<i32>(1i, global0[_wgslsmith_index_u32(46315u, 9u)], arg_1.b.a.b.x)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(min(arg_2.e, 0u) ^ arg_1.a, 29u)]), !(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(arg_0.a, 29u)])) > _wgslsmith_f_op_f32(-arg_2.d.a.a))), -(~arg_2.d.a.b.x), Struct_2(arg_2.d.a, 1073f, all(arg_2.c)));
    global1 = 979f;
    var_0 = arg_0.b;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), -_wgslsmith_clamp_vec3_i32(abs(var_0.e.a.b), vec3<i32>(2147483647i, 0i, global0[_wgslsmith_index_u32(arg_1.e, 9u)]), max(arg_1.b.a.b, vec3<i32>(arg_1.b.a.b.x, var_0.c.a.b.x, arg_1.d.a.b.x)))), 786f, any(select(!vec4<bool>(arg_2.b.c, true, arg_1.b.c, arg_1.d.c), vec4<bool>(true, true, true, false && arg_1.d.c), select(!vec4<bool>(false, var_0.c.c, false, arg_2.b.c), select(vec4<bool>(false, arg_1.d.c, var_0.c.c, arg_2.d.c), vec4<bool>(arg_1.c.x, true, false, false), vec4<bool>(arg_0.b.e.c, arg_2.c.x, arg_1.d.c, true)), select(var_0.e.c, arg_2.b.c, false)))));
    var_0 = arg_0.b;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(51862u, arg_0.a)), select(countOneBits(vec2<u32>(9091u, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.e, 1u), vec2<u32>(arg_1.e, arg_1.e), vec2<u32>(arg_0.a, arg_1.e)), arg_2.c)), 29u)]))));
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: vec2<bool>) -> Struct_3 {
    let var_0 = reverseBits(vec4<i32>(-1i) * -vec4<i32>(1i, global0[_wgslsmith_index_u32(max(1912u, arg_1.a), 9u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.a, arg_1.a), 9u)], 8138i));
    global0 = array<i32, 9>();
    global2 = array<f32, 29>();
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    return Struct_3(-1i, Struct_1(613f, _wgslsmith_mod_vec3_i32(arg_1.b.b.b, vec3<i32>(_wgslsmith_add_i32(1i, 0i), ~u_input.a, arg_1.b.d))), Struct_2(Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(41540u, ~0u), 29u)], vec3<i32>(-2147483647i & var_0.x, 1i, _wgslsmith_clamp_i32(arg_1.b.a, 1i, u_input.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_4(arg_1.a, Struct_3(-59603i, arg_1.b.c.a, Struct_2(Struct_1(-399f, vec3<i32>(-2147483647i, 1i, global0[_wgslsmith_index_u32(arg_1.a, 9u)])), arg_1.b.e.a.a, true), global0[_wgslsmith_index_u32(1u, 9u)], arg_1.b.e)), Struct_5(0u, Struct_2(arg_1.b.b, arg_1.b.c.a.a, true), vec2<bool>(arg_2.x, true), arg_1.b.e, arg_1.a), Struct_5(4294967295u, Struct_2(Struct_1(1775f, vec3<i32>(arg_1.b.c.a.b.x, 50653i, 2147483647i)), -546f, false), vec2<bool>(arg_0, true), arg_1.b.c, 67320u))), -234f)), arg_0 && (arg_1.b.e.c && arg_2.x)), abs(-u_input.a), arg_1.b.e);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> u32 {
    global2 = array<f32, 29>();
    let var_0 = Struct_4(~(~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(21976u, 4294967295u), vec2<u32>(1u, 4294967295u)))), func_2(any(vec4<bool>(all(vec3<bool>(arg_1.c.c, false, true)), any(vec4<bool>(true, false, arg_1.e.c, arg_1.c.c)), global2[_wgslsmith_index_u32(361u, 29u)] >= arg_0.x, arg_1.c.c)), Struct_4(1u, func_2(true, Struct_4(4294967295u, arg_1), vec2<bool>(arg_1.c.c, arg_1.e.c))), !vec2<bool>(arg_1.e.c, false)));
    global2 = array<f32, 29>();
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(func_1(), true, any(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -315f) < global2[_wgslsmith_index_u32(1u, 29u)], true, false | all(vec4<bool>(true, false, true, false)), !(u_input.a > 0i))));
    global0 = array<i32, 9>();
    var var_1 = Struct_5(0u, Struct_2(Struct_1(-1903f, max(vec3<i32>(7561i, -2147483647i, u_input.a), vec3<i32>(u_input.a, 66309i, u_input.a)) ^ abs(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], u_input.a, -2147483647i))), global2[_wgslsmith_index_u32(firstLeadingBit(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(83349u, 29u)], 1417f)), func_2(true, Struct_4(4294967295u, Struct_3(global0[_wgslsmith_index_u32(4294967295u, 9u)], Struct_1(-1266f, vec3<i32>(36851i, global0[_wgslsmith_index_u32(0u, 9u)], -1i)), Struct_2(Struct_1(222f, vec3<i32>(global0[_wgslsmith_index_u32(61275u, 9u)], u_input.a, u_input.a)), 298f, true), u_input.a, Struct_2(Struct_1(global2[_wgslsmith_index_u32(29280u, 29u)], vec3<i32>(u_input.a, 1i, u_input.a)), 323f, true))), var_0.yz))), 29u)], var_0.x), vec2<bool>(var_0.x, func_2(any(select(var_0.xx, var_0.zz, vec2<bool>(true, var_0.x))), Struct_4(17902u, func_2(true, Struct_4(26347u, Struct_3(u_input.a, Struct_1(global2[_wgslsmith_index_u32(4294967295u, 29u)], vec3<i32>(u_input.a, u_input.a, 16703i)), Struct_2(Struct_1(736f, vec3<i32>(-68842i, 2147483647i, 0i)), -243f, false), u_input.a, Struct_2(Struct_1(global2[_wgslsmith_index_u32(17801u, 29u)], vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(13945u, 9u)], u_input.a)), global2[_wgslsmith_index_u32(0u, 29u)], false))), var_0.zz)), !(!vec2<bool>(false, var_0.x))).c.c), func_2(true, Struct_4(_wgslsmith_mult_u32(abs(33586u), 1u), Struct_3(global0[_wgslsmith_index_u32(4294967295u, 9u)] << (16565u % 32u), Struct_1(-385f, vec3<i32>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(86651u, 9u)], u_input.a)), func_2(var_0.x, Struct_4(96908u, Struct_3(6059i, Struct_1(1086f, vec3<i32>(-27468i, global0[_wgslsmith_index_u32(46805u, 9u)], 29063i)), Struct_2(Struct_1(global2[_wgslsmith_index_u32(8799u, 29u)], vec3<i32>(1i, global0[_wgslsmith_index_u32(1u, 9u)], u_input.a)), 1369f, false), -2147483647i, Struct_2(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 29u)], vec3<i32>(global0[_wgslsmith_index_u32(29464u, 9u)], global0[_wgslsmith_index_u32(47564u, 9u)], u_input.a)), -651f, var_0.x))), var_0.yx).e, 1i, Struct_2(Struct_1(436f, vec3<i32>(2147483647i, 1i, 0i)), 529f, true))), vec2<bool>(true, var_0.x)).e, 6444u);
    let var_2 = vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~var_1.a, 29u)], _wgslsmith_f_op_f32(428f * var_1.b.b)) * 1102f) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-766f)) - global2[_wgslsmith_index_u32(var_1.a, 29u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(4462u);
}

