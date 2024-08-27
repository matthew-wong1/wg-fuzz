struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false));

var<private> global1: vec3<u32>;

var<private> global2: Struct_1;

var<private> global3: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true));

var<private> global4: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_2(1u, Struct_1(false, true), Struct_1(true, false), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 16673i)), vec4<bool>(true, false, false, true)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> u32 {
    global4 = array<Struct_4, 1>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f));
    let var_1 = Struct_4(Struct_2(0u, Struct_1(all(!vec3<bool>(false, arg_0, true)), arg_0 & any(global3[_wgslsmith_index_u32(global1.x, 9u)])), Struct_1(global2.a | false, !any(vec4<bool>(true, false, arg_0, arg_0))), ~countOneBits(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.c.x, -13102i, 2147483647i)))), vec4<bool>(arg_0, (_wgslsmith_sub_u32(4199u, global1.x) & global1.x) >= 83647u, !(global2.b & all(vec4<bool>(false, false, global2.a, true))), arg_0));
    global1 = ~(vec3<u32>(abs(firstLeadingBit(global1.x)), 0u, var_1.a.a) >> (reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, 1u, var_1.a.a), vec3<u32>(var_1.a.a, 4294967295u, global1.x))) % vec3<u32>(32u)));
    global1 = vec3<u32>(global1.x, select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.a, countOneBits(global1.x)), vec2<u32>(1u, _wgslsmith_add_u32(4294967295u, var_1.a.a))), ~global1.x, (_wgslsmith_div_f32(-836f, var_0) != _wgslsmith_f_op_f32(f32(-1f) * -664f)) | false), var_1.a.a);
    return 88286u;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: Struct_5) -> i32 {
    let var_0 = select(global0[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(~func_3(true), abs(30853u))), 9u)], true);
    let var_1 = arg_2;
    global0 = array<vec4<bool>, 23>();
    global2 = Struct_1((_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_0.e.zww, vec3<i32>(-688i, -72978i, arg_0.a)), 2147483647i) >= -32297i) | all(var_0.ww), _wgslsmith_sub_i32(~_wgslsmith_div_i32(arg_0.e.x, arg_3.a.x), u_input.a.x) < select(i32(-1i) * -1i, 8096i, all(select(global3[_wgslsmith_index_u32(arg_1, 9u)], var_0, global0[_wgslsmith_index_u32(30070u, 23u)]))));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_add_i32(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 0i, -8878i, u_input.c.x), u_input.c, max(arg_0.e, vec4<i32>(u_input.a.x, -25864i, 2147483647i, 0i))), arg_2.d)), -(-1i & abs(u_input.b << (global1.x % 32u))));
    return var_2;
}

fn func_1() -> Struct_4 {
    global4 = array<Struct_4, 1>();
    global4 = array<Struct_4, 1>();
    global2 = Struct_1(true, (i32(-1i) * -36501i) > max(-u_input.b, -func_2(Struct_3(11566i, vec2<u32>(global1.x, global1.x), 329f, Struct_1(global2.b, global2.b), vec4<i32>(u_input.c.x, -1i, 56040i, u_input.a.x)), global1.x, Struct_2(global1.x, Struct_1(global2.b, false), Struct_1(global2.a, false), vec4<i32>(27830i, u_input.a.x, -44907i, -1i)), Struct_5(vec3<i32>(u_input.c.x, 44978i, u_input.b)))));
    global1 = ~(~vec3<u32>(~_wgslsmith_mult_u32(global1.x, 4262u), global1.x, global1.x));
    var var_0 = 30112u;
    return Struct_4(Struct_2(global1.x & ~min(44395u, global1.x), Struct_1(!(true && global2.b), !(global2.b && false)), Struct_1(all(!vec2<bool>(global2.b, true)), any(vec3<bool>(false, false, true))), ~abs(-u_input.c)), global3[_wgslsmith_index_u32(~(~1u), 9u)]);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = arg_0.a.b;
    var var_1 = arg_0;
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~86563u, arg_0.a.a | arg_0.a.a), 1u)];
    let var_3 = arg_0.a;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -722f)))))), -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(), _wgslsmith_mod_vec4_i32(-u_input.c, abs(vec4<i32>(u_input.b, -2147483647i, -50409i, 2147483647i))), vec2<bool>(global2.a, true))) - -357f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(256f)), _wgslsmith_f_op_f32(f32(-1f) * -341f))) * _wgslsmith_f_op_f32(131f + 1f)), global2.b));
    let var_1 = _wgslsmith_mod_i32(~_wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(u_input.c.x, -2147483647i)), 1i) >> (global1.x % 32u);
    var var_2 = Struct_5(vec3<i32>(countOneBits(2147483647i), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), func_1().a.d.x));
    global3 = array<vec4<bool>, 9>();
    var var_3 = global1.x;
    var var_4 = _wgslsmith_div_i32(~(-2666i), _wgslsmith_clamp_i32(var_2.a.x, min(_wgslsmith_mod_i32(_wgslsmith_sub_i32(51725i, u_input.a.x), -var_2.a.x), _wgslsmith_div_i32(_wgslsmith_sub_i32(var_1, -15349i), 45668i << (global1.x % 32u))), select(2147483647i, i32(-1i) * -1i, !all(vec4<bool>(false, true, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0), select(~_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c.x, var_1), u_input.a.x), ~var_1, var_0 < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), -1000f)));
}

