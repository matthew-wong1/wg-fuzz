struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: f32 = 405f;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(38701u, 102737u), true, 0u, vec4<bool>(true, true, false, true));

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<u32>(5176u, 15035u), false, 38542u, vec4<bool>(true, true, false, true)), Struct_1(vec2<u32>(37677u, 18291u), false, 4294967295u, vec4<bool>(true, false, false, true)), Struct_1(vec2<u32>(66783u, 631u), false, 49265u, vec4<bool>(false, false, true, false)), Struct_1(vec2<u32>(1u, 1u), false, 35890u, vec4<bool>(true, false, false, true)), Struct_1(vec2<u32>(59923u, 0u), false, 4294967295u, vec4<bool>(false, true, false, false)), Struct_1(vec2<u32>(11016u, 0u), true, 4294967295u, vec4<bool>(false, true, true, true)), Struct_1(vec2<u32>(4294967295u, 4294967295u), false, 77768u, vec4<bool>(false, true, false, true)), Struct_1(vec2<u32>(4294967295u, 3261u), true, 43406u, vec4<bool>(false, false, true, true)), Struct_1(vec2<u32>(4294967295u, 32145u), true, 4294967295u, vec4<bool>(true, false, false, true)), Struct_1(vec2<u32>(19725u, 3311u), false, 24560u, vec4<bool>(true, false, false, false)), Struct_1(vec2<u32>(104777u, 4294967295u), true, 1u, vec4<bool>(true, false, false, false)), Struct_1(vec2<u32>(1u, 4294967295u), false, 1u, vec4<bool>(false, false, true, true)), Struct_1(vec2<u32>(1u, 42072u), true, 44309u, vec4<bool>(true, false, false, false)), Struct_1(vec2<u32>(4294967295u, 76601u), true, 65359u, vec4<bool>(true, false, false, false)), Struct_1(vec2<u32>(0u, 38794u), false, 0u, vec4<bool>(true, true, false, true)), Struct_1(vec2<u32>(4294967295u, 0u), true, 0u, vec4<bool>(false, true, true, true)), Struct_1(vec2<u32>(4294967295u, 33664u), true, 0u, vec4<bool>(false, false, true, true)), Struct_1(vec2<u32>(4294967295u, 1u), true, 46992u, vec4<bool>(true, true, true, true)), Struct_1(vec2<u32>(4294967295u, 4294967295u), true, 30854u, vec4<bool>(false, true, true, true)), Struct_1(vec2<u32>(37572u, 89586u), true, 10698u, vec4<bool>(true, true, true, true)), Struct_1(vec2<u32>(4294967295u, 0u), false, 0u, vec4<bool>(false, false, false, true)), Struct_1(vec2<u32>(1u, 0u), false, 0u, vec4<bool>(false, false, false, false)), Struct_1(vec2<u32>(4294967295u, 4147u), true, 1u, vec4<bool>(false, true, false, true)), Struct_1(vec2<u32>(4294967295u, 25464u), true, 1u, vec4<bool>(true, true, true, true)), Struct_1(vec2<u32>(4294967295u, 1u), true, 22775u, vec4<bool>(true, true, false, false)), Struct_1(vec2<u32>(50318u, 4294967295u), true, 22418u, vec4<bool>(true, false, false, true)), Struct_1(vec2<u32>(53962u, 1u), true, 4294967295u, vec4<bool>(true, true, false, false)), Struct_1(vec2<u32>(1u, 1u), true, 34506u, vec4<bool>(false, false, false, false)), Struct_1(vec2<u32>(75295u, 4294967295u), false, 0u, vec4<bool>(false, false, false, true)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> vec2<u32> {
    global4 = array<Struct_1, 29>();
    global4 = array<Struct_1, 29>();
    let var_0 = global4[_wgslsmith_index_u32(3567u, 29u)];
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -318f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-456f))), 1379f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1081f))), -690f, global2.d.x)));
    var var_2 = global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(var_0.a.x, u_input.e)), 29u)];
    return vec2<u32>(~10293u, ~_wgslsmith_mod_u32(reverseBits(1u), var_0.a.x));
}

fn func_3(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.x, u_input.c.x), u_input.c.x), 29u)];
    global2 = Struct_1(~global2.a, ~(-2147483647i) > min(u_input.d, u_input.b), 4294967295u, vec4<bool>(((global2.d.x && global2.b) && var_0.b) || !any(global3.d.zyz), true, (true && any(vec3<bool>(true, global3.d.x, true))) | global2.d.x, true == select(any(vec2<bool>(true, global3.d.x)), all(global3.d), global3.d.x)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(734f)))) * _wgslsmith_f_op_f32(f32(-1f) * -839f)));
    var var_1 = select(all(var_0.d.zw), true, var_0.b);
    var var_2 = Struct_1(var_0.a, false, 1u, !select(global2.d, vec4<bool>(global3.d.x, true, false, global3.b), !select(global3.b, global3.b, false)));
    return Struct_1(countOneBits(vec2<u32>(~func_2().x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 1u, global2.a.x), ~global2.a.x))), any(vec2<bool>(false, global3.b)), ~76135u, vec4<bool>(true, var_2.d.x, true, any(vec2<bool>(global2.b, true))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global2 = func_3(global2.a >> (select(global2.a, func_2(), select(vec2<bool>(arg_2.d.x, global2.d.x), !vec2<bool>(global3.b, false), true)) % vec2<u32>(32u)));
    var var_0 = _wgslsmith_add_i32(~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-5224i, u_input.d, arg_0, 21984i), vec4<i32>(1i, u_input.b, arg_0, -37781i) << (u_input.c % vec4<u32>(32u))), _wgslsmith_add_i32(-arg_0, _wgslsmith_mult_i32(0i, -1i))), _wgslsmith_sub_i32(15266i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0), vec2<i32>(1i, 34743i)), u_input.b)) ^ firstTrailingBit(_wgslsmith_div_i32(u_input.b, u_input.b)));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-892f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1487f) + _wgslsmith_f_op_f32(1749f + 1000f)))));
    var_1 = 1f;
    var var_2 = all(!vec4<bool>(true, any(global3.d), ~(-13862i) < (-18507i << (u_input.c.x % 32u)), any(select(arg_2.d.ywy, global3.d.xyw, arg_2.d.x))));
    return 10023u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3.c, 0u, global2.c), vec4<u32>(global2.c, global3.c, 30199u, 38844u)), ~global2.a.x), func_1(_wgslsmith_mod_i32(~u_input.a, 1i), Struct_1(~vec2<u32>(21111u, 4294967295u), false, u_input.c.x & 65473u, vec4<bool>(global3.d.x, false, global3.b, global3.d.x)), global4[_wgslsmith_index_u32(global3.a.x, 29u)])), select(global2.c, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.x, ~global3.c, 46452u), reverseBits(~vec3<u32>(1u, 0u, u_input.c.x))), all(vec4<bool>(true, global2.b & global2.d.x, global3.d.x | global3.b, global2.b))));
    global3 = Struct_1(vec2<u32>(0u, ~0u), all(!global2.d), _wgslsmith_div_u32(24583u ^ abs(global3.c), _wgslsmith_mult_u32(func_3(~vec2<u32>(global3.a.x, 4294967295u)).c, global2.a.x)), vec4<bool>(any(global2.d), true, ~(-u_input.d) <= -(i32(-1i) * -1i), func_3(~(~vec2<u32>(global3.c, 38782u))).b));
    global4 = array<Struct_1, 29>();
    global2 = func_3(firstTrailingBit(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(global2.a | u_input.c.xx, _wgslsmith_mult_vec2_u32(vec2<u32>(global3.c, 1u), global3.a)), vec2<u32>(var_0.x, select(4294967295u, u_input.c.x, global2.b)))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1850f) * _wgslsmith_f_op_f32(step(-1000f, 1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -428f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1009f, 310f)) - _wgslsmith_f_op_f32(f32(-1f) * -521f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2117f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-464f, 331f)) - -1142f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-874f, 260f), _wgslsmith_f_op_f32(f32(-1f) * -1367f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1088f + 456f)))), true)), ~vec2<i32>(u_input.d, firstTrailingBit(u_input.a)), firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.a.x, 22155u, u_input.c.x) ^ u_input.c, ~vec4<u32>(u_input.e, global3.a.x, u_input.c.x, global3.a.x)), 13492u, 0u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4577u, 0u, global2.a.x), vec3<u32>(u_input.e, u_input.c.x, 0u)))), 4294967295u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1246f, 576f, true)))))));
}

