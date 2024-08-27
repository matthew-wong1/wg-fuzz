struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(1542f, 863f, -320f, -452f, 685f, -1374f, -882f, -251f, -311f, -2475f, -782f, 1019f, 428f, 416f, 500f, 1000f, -1191f, 598f, -943f, 1000f, -1000f, -1000f, -1605f, -1003f, 1124f, -1361f, 466f, -1890f, 489f);

var<private> global1: Struct_5;

var<private> global2: vec3<u32> = vec3<u32>(1u, 1u, 26391u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_5) -> u32 {
    let var_0 = countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, ~global1.b.a.x), vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(62620u, global1.b.a.x, 0u, 10510u), vec4<u32>(arg_1.b.a.x, global2.x, 67469u, arg_1.b.a.x))), ~u_input.a), ~vec2<u32>(76587u, 4294967295u)));
    let var_1 = -1198f;
    let var_2 = Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1420f)))), arg_1.b);
    var var_3 = Struct_1(select(select(!(!vec4<bool>(true, false, arg_0.x, arg_0.x)), vec4<bool>(false, arg_0.x != true, global0[_wgslsmith_index_u32(14894u, 29u)] <= var_2.a, !arg_0.x), !(-1000f != var_2.a)), !select(!vec4<bool>(arg_0.x, arg_0.x, false, true), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, true, arg_0.x)), vec4<bool>(false, false, true, arg_0.x)), vec4<bool>(false, all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), var_2.b.a.x < _wgslsmith_mod_u32(global1.b.a.x, global1.b.a.x), global1.a <= _wgslsmith_f_op_f32(var_1 + 439f))), _wgslsmith_add_i32(abs(var_2.b.b & (arg_1.b.b & var_2.b.b)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(0i, 0i, -27532i)), vec3<i32>(global1.b.b, arg_1.b.b, 21035i) << (vec3<u32>(var_2.b.a.x, 21123u, var_2.b.a.x) % vec3<u32>(32u))), -max(-9770i, -1i), firstTrailingBit(-global1.b.b))), -_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_2.b.b, ~(-2147483647i)), reverseBits(min(vec3<i32>(-2147483647i, -29297i, arg_1.b.b), vec3<i32>(-42743i, 0i, global1.b.b)))), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, var_2.b.a.x), abs(global2.x)), _wgslsmith_add_u32(_wgslsmith_add_u32(var_2.b.a.x, var_2.b.a.x), arg_1.b.a.x)) >> (firstTrailingBit(~(~var_2.b.a.yz)) % vec2<u32>(32u)), -abs(-(~vec4<i32>(arg_1.b.b, var_2.b.b, global1.b.b, global1.b.b))));
    var var_4 = Struct_4(global1.b.a, var_3.b);
    return ~arg_1.b.a.x;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> f32 {
    var var_0 = vec4<u32>(~min(func_3(vec2<bool>(arg_1.x, true), Struct_5(global0[_wgslsmith_index_u32(global1.b.a.x, 29u)], global1.b)), 8754u), global2.x, ~(2557u | u_input.a), _wgslsmith_dot_vec3_u32(global1.b.a, vec3<u32>(4294967295u, global2.x, 1u) & global1.b.a) >> (~(global2.x | global2.x) % 32u)) ^ ~vec4<u32>(_wgslsmith_dot_vec2_u32(~global1.b.a.zy, vec2<u32>(u_input.a, 21455u)), global1.b.a.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(global1.b.a.x, 0u), ~global2.x), ~_wgslsmith_div_u32(4294967295u, 4294967295u));
    var_0 = vec4<u32>(~1u, ~global1.b.a.x, _wgslsmith_clamp_u32(1u, abs(max(1u, 4294967295u)), abs(u_input.a)), _wgslsmith_div_u32(~global2.x, global2.x | _wgslsmith_clamp_u32(1u, 1u, 60202u))) | ~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 1u), vec4<u32>(global1.b.a.x, 4294967295u, 1u, 1u)), vec4<u32>(38691u, global1.b.a.x, 0u, 9389u) >> (vec4<u32>(global1.b.a.x, 14296u, 0u, 1u) % vec4<u32>(32u))), ~(vec4<u32>(0u, u_input.a, 1u, var_0.x) | vec4<u32>(4294967295u, 0u, global1.b.a.x, global2.x)), vec4<u32>(68477u, global1.b.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(62523u, 43872u, 4468u, 0u), vec4<u32>(0u, 53430u, global2.x, 0u)), firstLeadingBit(u_input.a)));
    global2 = vec3<u32>(var_0.x, 1u, ~select(u_input.a, ~(~11288u), select(false, all(vec3<bool>(arg_1.x, false, true)), arg_1.x)));
    global0 = array<f32, 29>();
    let var_1 = global2.x;
    return _wgslsmith_f_op_f32(global1.a - global1.a);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1533f) - _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(func_2(!arg_2.x, !select(vec4<bool>(true, arg_2.x, true, false), vec4<bool>(false, arg_1.a.x, true, arg_2.x), true))), global1.a, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.d.x, 29u)])));
    return firstLeadingBit(-vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -28745i, arg_0 & 1i), global1.b.b, arg_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 29>();
    let var_0 = Struct_2(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_1(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), true), true), -2147483647i, func_1(-18492i, Struct_1(vec4<bool>(false, true, false, false), -48371i, ~vec3<i32>(30557i, global1.b.b, global1.b.b), ~global2.yy, vec4<i32>(global1.b.b, global1.b.b, global1.b.b, global1.b.b)), vec2<bool>(true, true)), firstTrailingBit(global1.b.a.zz >> (global2.zx % vec2<u32>(32u))), vec4<i32>(-2147483647i, global1.b.b, _wgslsmith_clamp_i32(-1i, global1.b.b, ~global1.b.b), ~global1.b.b)));
    var var_1 = false;
    let var_2 = global1.b;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, global1.a))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1.a) + vec2<f32>(global0[_wgslsmith_index_u32(global2.x, 29u)], -1000f)))))));
    global1 = Struct_5(-368f, global1.b);
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2263f)), _wgslsmith_f_op_f32(1649f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * _wgslsmith_f_op_f32(select(584f, -1443f, false))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(var_0.b.a.x, vec4<bool>(var_0.b.a.x, false, true, false))))))));
    global0 = array<f32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(reverseBits(firstLeadingBit(_wgslsmith_add_u32(global2.x, var_0.b.d.x))), 0u ^ (_wgslsmith_sub_u32(global2.x, var_2.a.x) >> (reverseBits(u_input.a) % 32u))), firstLeadingBit((min(var_2.a, global1.b.a) >> (var_2.a % vec3<u32>(32u))) << (~vec3<u32>(1u, var_2.a.x, 85670u) % vec3<u32>(32u))), select(var_0.b.e, -(var_0.b.e | var_0.b.e), select(!vec4<bool>(true, true, var_0.a.x, true), !vec4<bool>(var_0.b.a.x, var_0.a.x, false, false), vec4<bool>(var_0.a.x, var_0.a.x, true, false))) | min(vec4<i32>(1i, _wgslsmith_div_i32(-34875i, -1i), _wgslsmith_div_i32(var_0.b.e.x, var_2.b), abs(global1.b.b)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-42239i, global1.b.b, 1i, var_0.b.b), var_0.b.e), _wgslsmith_add_i32(-1i, -6779i), 41720i, 2147483647i)), _wgslsmith_sub_i32(global1.b.b ^ _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-10157i, var_0.b.e.x), var_0.b.c.zz), var_0.b.c.yx), firstTrailingBit(-var_2.b)));
}

