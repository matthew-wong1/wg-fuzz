struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: bool,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(71782u, 4294967295u), vec2<u32>(3686u, 4294967295u), vec2<u32>(17994u, 16599u), vec2<u32>(12747u, 1u), vec2<u32>(85936u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(10467u, 69293u));

var<private> global2: Struct_2;

var<private> global3: f32 = 743f;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> bool {
    let var_0 = !select(!(!(!vec4<bool>(true, global0.x, arg_1.x, global2.c))), !select(select(vec4<bool>(global0.x, arg_1.x, true, arg_1.x), vec4<bool>(false, global2.d.x, global2.d.x, arg_1.x), vec4<bool>(false, false, true, global0.x)), !vec4<bool>(global0.x, global0.x, true, arg_1.x), !arg_1.x), select(vec4<bool>(true, false, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, u_input.b > arg_0, true), vec4<bool>(4294967295u == global2.a.x, true, true, arg_1.x)));
    global1 = array<vec2<u32>, 9>();
    global1 = array<vec2<u32>, 9>();
    let var_1 = -22016i;
    let var_2 = Struct_2(global2.a, global2.b, (u_input.a.x | ~_wgslsmith_div_u32(arg_0, arg_0)) <= 0u, vec2<bool>(all(select(var_0, !var_0, true)), !all(!vec2<bool>(true, global2.c))), select(~(~vec4<u32>(4294967295u, 4294967295u, 0u, global2.e.x)), global2.e, global0.x) | ~countOneBits(global2.e ^ vec4<u32>(30908u, global2.e.x, 4294967295u, 30764u)));
    return true;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_div_i32(u_input.c, u_input.c >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(50096u, 19678u, u_input.a.x), ~global2.a) % 32u));
    global0 = global2.d;
    var var_1 = 45067i;
    global0 = select(!global2.d, vec2<bool>(func_3(global2.a.x, vec2<bool>(true, true)), false), true);
    let var_2 = true;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1293f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3285f) * 401f), _wgslsmith_f_op_f32(-192f * _wgslsmith_f_op_f32(global2.b.x - global2.b.x))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(global2.b.x)), _wgslsmith_f_op_f32(func_2()), arg_1);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -330f)));
    let var_2 = vec2<bool>(!(!(_wgslsmith_f_op_f32(-global2.b.x) == -571f)), var_0.x <= arg_1);
    let var_3 = vec2<bool>(true, _wgslsmith_sub_u32(u_input.b, ~u_input.b) < ~1u);
    var var_4 = -2586f;
    return (i32(-1i) * -_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c, u_input.c)), abs(vec2<i32>(u_input.c, -1i)))) ^ abs(i32(-1i) * -select(1i, u_input.c, true));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = select(vec4<bool>(any(!select(vec3<bool>(global2.d.x, false, false), vec3<bool>(global2.c, global0.x, global0.x), global2.d.x)), !(!global2.c || (arg_3.x == u_input.c)), true, any(vec2<bool>(true && global0.x, global2.d.x))), !(!vec4<bool>(global0.x, !global0.x, select(true, global2.d.x, global0.x), true || global0.x)), select(!(!(!vec4<bool>(global2.d.x, true, true, global2.c))), select(vec4<bool>(arg_2.x < arg_1.x, any(global2.d), global0.x, true), !(!vec4<bool>(true, true, global2.c, true)), select(false, true, global0.x)), select(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !vec4<bool>(false, global0.x, true, false), all(vec3<bool>(true, true, true)))));
    let var_1 = ~u_input.a.x;
    let var_2 = Struct_2(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.zyy, global2.a), max(select(arg_0.wyx, vec3<u32>(39216u, arg_0.x, 4294967295u), var_0.wyx), global2.a), firstLeadingBit(vec3<u32>(93019u, arg_0.x, arg_0.x))), vec3<u32>(abs(min(global2.e.x, u_input.b)), var_1, var_1)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(global2.b)))), global2.c, global2.d, vec4<u32>(var_1, global2.e.x | (u_input.a.x << (138u % 32u)), 3185u, ~(~_wgslsmith_dot_vec3_u32(global2.e.zxx, global2.a))));
    let var_3 = Struct_4(u_input.a.x, Struct_3(var_1, var_0, u_input.c));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-976f * arg_1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-291f))) * _wgslsmith_f_op_f32(exp2(arg_2.x))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(~(~(~(~vec4<u32>(1u, u_input.b, 7090u, 39031u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(595f, global2.b.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-204f, -700f) * global2.b.wz)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(194f, -460f))), global2.b.wz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.xx) * global2.b.wy)), _wgslsmith_mod_vec3_i32(select(firstLeadingBit(vec3<i32>(u_input.c, u_input.c, 0i)), vec3<i32>(u_input.c, u_input.c, u_input.c) & ~vec3<i32>(-30951i, u_input.c, u_input.c), select(!vec3<bool>(global2.d.x, false, true), vec3<bool>(global2.d.x, false, true), global0.x)), vec3<i32>(func_1(select(vec4<bool>(false, global2.c, global0.x, true), vec4<bool>(global0.x, global0.x, false, global2.c), false), global2.b.x), -29559i, 27707i)));
    var var_0 = Struct_2(max(~abs(vec3<u32>(u_input.a.x, u_input.b, u_input.b)), vec3<u32>(~(~1u), min(1u >> (u_input.b % 32u), global2.e.x), _wgslsmith_mult_u32(abs(global2.e.x), _wgslsmith_add_u32(15016u, 33163u)))), vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-929f)) - 1107f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x))), global0.x, vec2<bool>(!(-83389i != (-28340i >> (global2.a.x % 32u))), !any(!vec4<bool>(global0.x, true, global0.x, global2.c))), ~(~func_4(global2.e & vec4<u32>(6896u, u_input.a.x, 0u, 31838u), vec2<f32>(-620f, global2.b.x), global2.b.xy, vec3<i32>(u_input.c, 2147483647i, u_input.c)).e));
    var var_1 = select(_wgslsmith_add_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-122i, u_input.c, u_input.c, u_input.c), vec4<i32>(0i, -2147483647i, -2147483647i, u_input.c)), vec4<i32>(-1i, u_input.c << (u_input.b % 32u), 2147483647i, _wgslsmith_add_i32(u_input.c, 1i))) ^ min(abs(vec4<i32>(1i, 66975i, u_input.c, 0i)), max(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(-1i, 1i, 1i, 5167i)), vec4<i32>(-16311i, u_input.c, 0i, u_input.c) ^ vec4<i32>(0i, -5601i, 0i, u_input.c))), ~vec4<i32>(1i, i32(-1i) * -11264i, 2147483647i, firstTrailingBit(~3308i)), var_0.d.x);
    let var_2 = Struct_3(26205u << ((global2.a.x ^ (0u >> (global2.e.x % 32u))) % 32u), select(vec4<bool>(true, false, !global2.c, true), vec4<bool>(global2.c, false, global2.c, var_0.d.x & !global2.c), true), ~(countOneBits(-1i) >> (~global2.a.x % 32u)));
    var var_3 = func_4((vec4<u32>(abs(36958u), reverseBits(1u), firstLeadingBit(var_0.e.x), func_4(vec4<u32>(var_2.a, var_0.e.x, 55984u, u_input.b), vec2<f32>(global2.b.x, var_0.b.x), global2.b.ww, var_1.zyx).a.x) ^ vec4<u32>(u_input.b, ~0u, ~4294967295u, 829u | var_0.e.x)) & _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(global2.e, var_0.e), ~global2.e), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -2715f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, global2.b.x) * var_0.b.yy))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b.xy, vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(sign(-661f))))), var_1.wwy);
    var_1 = firstTrailingBit(~(-countOneBits(-vec4<i32>(-1i, 30982i, u_input.c, -1i))));
    var var_4 = 20980u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

