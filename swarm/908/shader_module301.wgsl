struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(true, true, false, true, true, true, false, true, false, false, true, true, true, true, false, false, false, true, false);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = all(select(select(!vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 19u)], false, arg_0.a, true), select(vec4<bool>(arg_0.a, global0[_wgslsmith_index_u32(0u, 19u)], arg_0.a, arg_0.a), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(9014u, 19u)], arg_0.a), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 19u)], arg_0.a, false, global0[_wgslsmith_index_u32(arg_0.e.a.x, 19u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 19u)], true, false, true)), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(12657u, 19u)], global0[_wgslsmith_index_u32(23553u, 19u)]), vec4<bool>(true, true, true, arg_0.a), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 19u)], arg_0.a, arg_0.a))), vec4<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(6019u, 19u)], false, false, true)), arg_1.b.x > -11983i, !global0[_wgslsmith_index_u32(28099u, 19u)])), vec4<bool>(true, (global0[_wgslsmith_index_u32(arg_0.e.a.x, 19u)] & false) && any(vec3<bool>(false, global0[_wgslsmith_index_u32(16690u, 19u)], global0[_wgslsmith_index_u32(arg_0.b.x, 19u)])), true, arg_0.a), select(!select(vec4<bool>(true, arg_0.a, global0[_wgslsmith_index_u32(1u, 19u)], true), vec4<bool>(false, false, arg_0.a, true), global0[_wgslsmith_index_u32(1u, 19u)]), !select(vec4<bool>(arg_0.a, global0[_wgslsmith_index_u32(4294967295u, 19u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 19u)], false, true, true), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_1.a.x, 19u)], false, global0[_wgslsmith_index_u32(1u, 19u)])), vec4<bool>(all(vec4<bool>(false, true, arg_0.a, arg_0.a)), all(vec2<bool>(false, arg_0.a)), arg_0.a && global0[_wgslsmith_index_u32(arg_0.b.x, 19u)], true))));
    return -(~(select(vec3<i32>(arg_0.e.b.x, -15725i, -31693i), vec3<i32>(18857i, 21602i, arg_0.d), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(13520u, 19u)])) ^ min(_wgslsmith_mod_vec3_i32(arg_1.b, vec3<i32>(arg_1.b.x, arg_0.c.b.x, arg_1.b.x)), ~arg_0.e.b)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(~abs(~7939u) == u_input.c, ~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 83991u, 1u), vec3<u32>(u_input.b, 4294967295u, 4121u)))), Struct_1(~(~(vec4<u32>(u_input.c, u_input.c, u_input.b, 39412u) << (vec4<u32>(85765u, 1u, u_input.c, u_input.a) % vec4<u32>(32u)))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i) >> (countOneBits(vec3<u32>(0u, u_input.b, u_input.c)) % vec3<u32>(32u)), func_3(Struct_2(false, vec3<u32>(1u, u_input.b, u_input.a), Struct_1(vec4<u32>(51308u, 4294967295u, 0u, u_input.b), vec3<i32>(-18324i, 54457i, 1i)), -1i, Struct_1(vec4<u32>(u_input.a, 131722u, u_input.b, 47229u), vec3<i32>(2147483647i, -26448i, -47833i))), Struct_1(vec4<u32>(u_input.c, 5094u, 1u, 0u), vec3<i32>(-38581i, 2765i, 52516i))))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-2147483647i, 0i, 2147483647i) >> (vec3<u32>(u_input.c, u_input.b, 1u) % vec3<u32>(32u))), ~max(vec3<i32>(2147483647i, 1i, 27992i), vec3<i32>(41801i, -21611i, 29049i))), firstTrailingBit(~abs(vec3<i32>(-1i, -2147483647i, -50429i)))), Struct_1(_wgslsmith_mult_vec4_u32(select(vec4<u32>(21936u, 0u, 12330u, 1u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a), false), vec4<u32>(50223u, u_input.c, 1u, u_input.b) ^ vec4<u32>(u_input.a, u_input.b, 28620u, 0u)) << (~vec4<u32>(u_input.b, 42759u, u_input.c, u_input.b) % vec4<u32>(32u)), ~firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1i, -42526i), vec3<i32>(2147483647i, -47613i, 0i), vec3<i32>(-80373i, -1i, 1i)))));
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    return var_0.c;
}

fn func_1() -> vec4<u32> {
    let var_0 = ~0u;
    var var_1 = func_2();
    var_1 = Struct_1(var_1.a, ~(~reverseBits(vec3<i32>(13636i, var_1.b.x, 2147483647i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(abs(930f)), 142f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-243f * -525f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-457f, -1089f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(-426f, 395f))), _wgslsmith_f_op_f32(f32(-1f) * -299f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(995f)) * _wgslsmith_f_op_f32(min(-196f, -159f)))))));
    var var_3 = vec3<i32>(_wgslsmith_div_i32(var_1.b.x & var_1.b.x, countOneBits(11976i)), i32(-1i) * -2147483647i, ~var_1.b.x);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((vec4<u32>(1u, 1u, ~u_input.a, 1u) << (func_1() % vec4<u32>(32u))) & vec4<u32>(59483u, _wgslsmith_add_u32(12462u, 16352u) | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.b), vec4<u32>(0u, u_input.c, u_input.c, u_input.c)), 52781u, 40542u), -abs(vec3<i32>(-1i) * -vec3<i32>(-1i, 101391i, 1i)));
    let var_1 = u_input.c;
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1501f), _wgslsmith_f_op_f32(f32(-1f) * -686f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1192f + _wgslsmith_f_op_f32(select(1000f, -1000f, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_div_i32(var_0.b.x, abs(~var_0.b.x)), var_0.b.x & ~25559i), 1i << (~(~_wgslsmith_div_u32(20869u, 14824u)) % 32u), func_3(Struct_2(true, _wgslsmith_clamp_vec3_u32(var_0.a.zxw, vec3<u32>(51770u, var_0.a.x, var_0.a.x), var_0.a.wwx), Struct_1(vec4<u32>(1u, u_input.a, u_input.a, var_1), vec3<i32>(-1i, 2147483647i, var_0.b.x)), _wgslsmith_add_i32(var_0.b.x, -14153i), func_2()), func_2()) >> (vec3<u32>(countOneBits(38679u), var_1, 1u) % vec3<u32>(32u)), _wgslsmith_mod_u32(max(_wgslsmith_div_u32(countOneBits(4294967295u), u_input.b), ~u_input.a | func_1().x), ~(~firstTrailingBit(90763u))), var_2.zy);
}

