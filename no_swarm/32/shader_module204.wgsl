struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(0u, 1u);

var<private> global1: Struct_4 = Struct_4(-1931f, 0u);

var<private> global2: f32;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(731f, -1195f, 265f), vec3<bool>(false, true, true), true, vec3<u32>(4294967295u, 12494u, 39436u), vec4<bool>(false, true, false, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(abs(global1.a)), 70833u);
    global1 = var_0;
    let var_1 = global3.c;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-946f, -1045f) - _wgslsmith_f_op_f32(-882f * var_0.a)) * _wgslsmith_f_op_f32(127f * _wgslsmith_f_op_f32(-global1.a))))));
    let var_2 = vec2<u32>(~1u, ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(33255u, 0u, var_0.b), arg_1.x)) << ((global3.d.xz ^ _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(global3.d.yx, vec2<u32>(var_0.b, arg_0)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 53123u), global3.d.yz, vec2<u32>(4294967295u, 8452u)))) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global1.a))));
}

fn func_2() -> u32 {
    var var_0 = global3.a.x;
    var var_1 = u_input.a.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(min(global1.b, 4294967295u), ~global3.d.yx, ~vec4<u32>(0u, global3.d.x, global1.b, 0u)))) - _wgslsmith_f_op_f32(557f + 1845f)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global3.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(508f, -464f, -1402f), global3.a)))) - global3.a), select(global3.e.wyz, !select(!global3.b, select(global3.e.zyx, global3.b, global3.b.x), global3.c), select(false, global1.a > -741f, !(global3.c && true))), true | global3.e.x, ~global3.d, global3.e);
    let var_3 = var_2;
    return 4294967295u;
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_2 {
    global3 = Struct_1(global3.a, global3.b, global3.c, select(vec3<u32>(_wgslsmith_mod_u32(u_input.b & 0u, _wgslsmith_dot_vec3_u32(global3.d, vec3<u32>(global3.d.x, 0u, global3.d.x))), 4294967295u, 1u), vec3<u32>(_wgslsmith_add_u32(~4294967295u, ~global1.b), 40142u, _wgslsmith_sub_u32(~4294967295u, global1.b)), global3.b.x), vec4<bool>(any(vec2<bool>(true, true)), !any(vec4<bool>(global3.e.x, global3.c, true, true)), true, global3.c));
    var var_0 = u_input.a.x;
    global1 = Struct_4(global3.a.x, 4294967295u);
    global1 = Struct_4(_wgslsmith_f_op_f32(round(-859f)), func_2());
    global0 = array<u32, 2>();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, global3.a.x)))), select(!select(global3.b, global3.e.wyw, global3.e.wyw), !select(global3.b, global3.e.xxw, vec3<bool>(global3.c, global3.c, true)), select(-1011f == global1.a, global3.b.x, global3.e.x)), true, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(10104u, 95410u, u_input.b), vec3<u32>(global1.b, 19580u, u_input.b) >> (vec3<u32>(1u, global3.d.x, u_input.b) % vec3<u32>(32u))), _wgslsmith_mod_u32(1u, 1u), global0[_wgslsmith_index_u32(func_2(), 2u)]), select(vec4<bool>(global3.e.x & global3.c, true, true, true), global3.e, select(!vec4<bool>(global3.b.x, false, true, global3.e.x), global3.e, global3.e))), Struct_1(global3.a, select(vec3<bool>(true, false && global3.e.x, global3.d.x < global0[_wgslsmith_index_u32(global3.d.x, 2u)]), select(select(vec3<bool>(global3.b.x, global3.e.x, false), global3.b, global3.b), vec3<bool>(global3.b.x, true, global3.c), !vec3<bool>(global3.e.x, global3.b.x, false)), vec3<bool>(select(global3.b.x, false, global3.b.x), true, all(vec4<bool>(global3.e.x, global3.b.x, true, global3.e.x)))), true, vec3<u32>(abs(global1.b) ^ ~global3.d.x, (global3.d.x ^ u_input.b) ^ 1u, ~(~global1.b)), vec4<bool>(!global3.b.x, global3.e.x, !(1314f >= global3.a.x), _wgslsmith_f_op_f32(ceil(1000f)) < _wgslsmith_f_op_f32(1788f - global1.a))), Struct_1(vec3<f32>(219f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.a.x)) - _wgslsmith_f_op_f32(step(global1.a, -1000f))), -1023f), vec3<bool>(!(arg_0 < -5666i), select(all(vec2<bool>(true, global3.e.x)), all(vec3<bool>(global3.c, global3.e.x, global3.c)), any(vec2<bool>(false, true))), global3.c), global3.c, ~select(global3.d, _wgslsmith_mod_vec3_u32(global3.d, vec3<u32>(0u, global3.d.x, 1u)), global3.e.yzx), global3.e));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = vec3<i32>(min(arg_1.x, _wgslsmith_div_i32(1i, u_input.a.x)), max(u_input.a.x, arg_1.x) & _wgslsmith_dot_vec3_i32(u_input.a.yzy, firstLeadingBit(select(vec3<i32>(13760i, -1i, u_input.a.x), u_input.a.xzw, global3.b))), -59496i);
    var var_1 = func_1(2147483647i, -15732i).c;
    global1 = Struct_4(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-1882f * _wgslsmith_div_f32(global3.a.x, var_1.a.x)))), arg_2.c.d.x);
    let var_2 = Struct_2(func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x << (u_input.b % 32u), firstLeadingBit(1i), arg_1.x), -(vec3<i32>(u_input.a.x, 9272i, var_0.x) >> (vec3<u32>(4294967295u, 48568u, 1u) % vec3<u32>(32u)))), ~5478i).a, arg_2.a, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1705f)), -2313f, -2127f)), !vec3<bool>(true, 2117f > global3.a.x, select(arg_2.c.e.x, arg_2.c.b.x, true)), any(global3.e.xy), _wgslsmith_add_vec3_u32(vec3<u32>(global1.b, select(global3.d.x, global1.b, false), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, global1.b, 61726u, 50466u), vec4<u32>(global1.b, u_input.b, u_input.b, arg_2.c.d.x))), ~vec3<u32>(1u, global1.b, u_input.b)), select(func_1(0i, _wgslsmith_sub_i32(arg_1.x, -14419i)).c.e, func_1(9988i, ~(-1i)).c.e, select(global3.e, vec4<bool>(global3.c, arg_0.x, global3.b.x, true), select(false, var_1.e.x, global3.b.x)))));
    let var_3 = _wgslsmith_div_vec4_i32(abs((u_input.a & vec4<i32>(arg_1.x, arg_1.x, -44527i, u_input.a.x)) ^ vec4<i32>(-35683i, -45499i, -13875i, u_input.a.x)), _wgslsmith_clamp_vec4_i32(countOneBits(firstLeadingBit(vec4<i32>(0i, var_0.x, 2147483647i, 1i))), _wgslsmith_add_vec4_i32(u_input.a >> (vec4<u32>(var_1.d.x, global0[_wgslsmith_index_u32(var_2.c.d.x, 2u)], var_1.d.x, 1u) % vec4<u32>(32u)), vec4<i32>(var_0.x, -2147483647i, var_0.x, var_0.x)), vec4<i32>(54960i, arg_1.x, -13007i, ~arg_1.x))) & u_input.a;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1300f, _wgslsmith_div_f32(-1546f, var_2.b.a.x), _wgslsmith_f_op_f32(sign(951f)))), select(!select(var_1.e.xwy, vec3<bool>(arg_2.c.e.x, arg_2.c.b.x, true), vec3<bool>(arg_2.b.b.x, var_2.b.b.x, global3.c)), func_1(24896i, min(0i, var_0.x)).c.b, select(vec3<bool>(arg_2.b.b.x, true, var_2.a.b.x), arg_2.b.e.zyz, var_1.b)), false, vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 10u, 1u, global3.d.x) & vec4<u32>(16087u, 0u, global1.b, 1u), vec4<u32>(1u, 0u, 1u, global1.b)), _wgslsmith_mod_u32(arg_2.b.d.x | 0u, 11854u)), !(!(!vec4<bool>(arg_2.b.b.x, false, true, var_1.c)))), var_2.a, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.c.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386f * var_2.b.a.x)), -2197f), var_1.e.wwz, !any(select(var_2.b.e, var_1.e, var_1.c)), _wgslsmith_add_vec3_u32(vec3<u32>(~411u, u_input.b, func_2()), firstLeadingBit(vec3<u32>(var_1.d.x, 1422u, 51592u))), var_1.e));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    global1 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_1.c.a.x, _wgslsmith_f_op_f32(-global3.a.x))), arg_1.b.a.x)), 4294967295u);
    global2 = arg_1.b.a.x;
    global0 = array<u32, 2>();
    return Struct_3(vec4<bool>(false, func_1(reverseBits(u_input.a.x), -1i).a.c, any(vec3<bool>(any(vec2<bool>(false, arg_2.a.x)), all(arg_1.a.e.zz), global3.c)), true));
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1493f));
    let var_1 = arg_2.a.x;
    var var_2 = max(global3.d.xz, countOneBits(abs(vec2<u32>(4294967295u, ~u_input.b))));
    var var_3 = Struct_1(vec3<f32>(global1.a, _wgslsmith_f_op_f32(456f - _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(sign(-745f))))), _wgslsmith_f_op_f32(1379f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a.x), 1f)))), vec3<bool>(any(!vec3<bool>(arg_0.a.x, arg_0.a.x, arg_2.b.x)), true, global3.b.x), true, arg_2.d, vec4<bool>(arg_0.a.x, !global3.e.x, arg_0.a.x, arg_0.a.x));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global3.d.x, vec2<u32>(~global1.b, u_input.b), vec4<u32>(var_3.d.x >> (var_3.d.x % 32u), _wgslsmith_add_u32(4294967295u, global3.d.x), 27654u, global1.b << (44148u % 32u)))) + 293f), _wgslsmith_div_u32(~global1.b, 1u));
    return func_1(u_input.a.x, -66488i).a.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~global3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)), func_6(func_5(global0[_wgslsmith_index_u32(u_input.b & max(32875u, global1.b), 2u)], func_4(select(global3.e, global3.e, global3.b.x), min(u_input.a.yyw, vec3<i32>(-2147483647i, -1i, u_input.a.x)), func_1(u_input.a.x, u_input.a.x)), Struct_3(func_4(vec4<bool>(global3.e.x, global3.b.x, true, global3.c), u_input.a.wxx, Struct_2(Struct_1(global3.a, vec3<bool>(false, false, false), true, global3.d, vec4<bool>(global3.b.x, true, global3.b.x, global3.e.x)), Struct_1(vec3<f32>(-1477f, -338f, global3.a.x), vec3<bool>(false, false, true), false, vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], global1.b), vec4<bool>(false, global3.b.x, false, global3.e.x)), Struct_1(global3.a, global3.b, global3.c, vec3<u32>(global1.b, global3.d.x, global3.d.x), vec4<bool>(true, global3.e.x, false, false)))).c.e)), _wgslsmith_mult_i32(min(countOneBits(u_input.a.x), u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, ~0i)), Struct_1(global3.a, vec3<bool>(global3.e.x, true, any(global3.e.zzw)), false, select(vec3<u32>(global3.d.x, 1u, 25929u), vec3<u32>(20323u, global1.b, global3.d.x), false), !vec4<bool>(global3.c, true, true, true))));
}

