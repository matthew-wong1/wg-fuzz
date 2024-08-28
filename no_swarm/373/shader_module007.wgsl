struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<bool, 28> = array<bool, 28>(true, true, true, false, false, true, false, false, true, false, true, true, true, true, true, false, false, false, true, true, true, true, false, true, false, false, true, true);

var<private> global2: vec3<i32>;

var<private> global3: f32;

var<private> global4: array<vec2<f32>, 30>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(vec4<u32>(u_input.a.x, ~0u, u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_add_vec2_u32(u_input.a, u_input.a))), ~u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(339f)), _wgslsmith_f_op_f32(trunc(-133f)), select(false, global1[_wgslsmith_index_u32(45867u, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)]))) + _wgslsmith_f_op_f32(-670f * -1866f)), false), 1000f, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-511f - 503f), _wgslsmith_f_op_f32(f32(-1f) * -1300f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1190f, -1209f)), -1013f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f) + _wgslsmith_f_op_f32(sign(1000f)))))));
    var var_1 = global2.x;
    var var_2 = 25264i;
    let var_3 = var_0.a;
    var var_4 = Struct_1(var_0.a.a, u_input.a.x, _wgslsmith_div_f32(var_0.b, var_0.a.c), any(!select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(70294u, 28u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], var_0.a.d, var_3.d), vec3<bool>(global0.x, true, var_3.d)), !vec3<bool>(global0.x, global1[_wgslsmith_index_u32(21281u, 28u)], false), !global1[_wgslsmith_index_u32(var_3.b, 28u)])));
    return ~vec3<u32>(var_0.a.b, _wgslsmith_mult_u32(u_input.a.x, var_0.a.b), _wgslsmith_dot_vec2_u32(~(vec2<u32>(var_3.a.x, 1u) ^ vec2<u32>(0u, var_3.a.x)), ~var_4.a.xz));
}

fn func_2() -> vec4<i32> {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 28u)];
    let var_1 = global0.x;
    let var_2 = select(true, any(!vec4<bool>(true, true, any(vec4<bool>(true, false, true, global0.x)), select(false, global0.x, true))), false & (u_input.a.x <= _wgslsmith_mult_u32(u_input.a.x ^ 18663u, u_input.a.x)));
    let var_3 = ~(~(~(~func_3())));
    let var_4 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, u_input.a.x, 36354u, 0u), countOneBits(select(vec4<u32>(0u, 4294967295u, var_3.x, var_3.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_3.x), global1[_wgslsmith_index_u32(4294967295u, 28u)]))), _wgslsmith_dot_vec2_u32(func_3().xy, vec2<u32>(var_3.x, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1668f))), var_2), _wgslsmith_f_op_f32(select(-132f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2040f + -303f), _wgslsmith_div_f32(-690f, 469f))), 194f)), select(var_2, global1[_wgslsmith_index_u32(36197u, 28u)], global2.x >= 6381i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(233f - -386f) + _wgslsmith_f_op_f32(622f - -1381f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1748f * -275f))), 216f, _wgslsmith_f_op_f32(f32(-1f) * -646f))));
    return vec4<i32>(-1i) * -((vec4<i32>(2147483647i, -1i, u_input.b.x, 0i) << (_wgslsmith_clamp_vec4_u32(var_4.a.a, var_4.a.a, var_4.a.a) % vec4<u32>(32u))) ^ (-vec4<i32>(u_input.b.x, 34850i, u_input.b.x, -32543i) & ~vec4<i32>(global2.x, 37432i, u_input.b.x, 54i)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: vec3<u32>) -> i32 {
    global2 = -_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), -global2.zy), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, global2.x, -15573i) | vec3<i32>(8694i, 2147483647i, 69126i), vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)), 1i), min(vec3<i32>(_wgslsmith_clamp_i32(global2.x, 2147483647i, global2.x), ~(-2147483647i), global2.x), select(vec3<i32>(49484i, 2147483647i, global2.x), vec3<i32>(1i, 23646i, global2.x), arg_0.a.b >= arg_3.x)));
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b))))) * 1581f)));
    let var_1 = arg_0.a.b;
    var var_2 = -_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(func_2(), abs(vec4<i32>(global2.x, -2147483647i, 48136i, -54702i))), abs(vec4<i32>(global2.x, global2.x, global2.x, 20511i)) & ~vec4<i32>(u_input.b.x, 21093i, 2147483647i, 0i)), select((vec4<i32>(1i, -46617i, -2147483647i, 1i) | vec4<i32>(u_input.b.x, -9478i, u_input.b.x, u_input.b.x)) | (vec4<i32>(u_input.b.x, u_input.b.x, -1i, global2.x) & vec4<i32>(-1i, 0i, global2.x, 1i)), countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -1i)), !any(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_2.x, 28u)], false, true))));
    global3 = var_0;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(max(0i, u_input.b.x), -u_input.b.x), 0i, u_input.b.x), countOneBits(vec3<i32>(func_1(Struct_2(Struct_1(vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.a.x), u_input.a.x, -830f, false), 323f, vec4<f32>(-1419f, 569f, -2444f, -1062f)), u_input.a, vec3<u32>(100192u, u_input.a.x, 8745u), vec3<u32>(11960u, 53457u, 19764u)), 1i, _wgslsmith_add_i32(-28711i, global2.x)))));
    let var_0 = Struct_1(~_wgslsmith_mult_vec4_u32(~countOneBits(vec4<u32>(1u, 1u, 4294967295u, u_input.a.x)), select(vec4<u32>(69890u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, 0u, u_input.a.x, 13849u), vec4<bool>(true, global1[_wgslsmith_index_u32(17911u, 28u)], false, global0.x)) << (~vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 9111u, 1u, 0u), reverseBits(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x))), abs(0u) >> (countOneBits(3263u) % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(429f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1736f, 2354f))), 1037f), true);
    let var_1 = select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), !((var_0.b <= 1u) || global0.x)), !select(vec3<bool>(false, all(vec4<bool>(var_0.d, false, true, var_0.d)), select(false, true, global1[_wgslsmith_index_u32(u_input.a.x, 28u)])), vec3<bool>(global2.x <= global2.x, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], false), select(!vec3<bool>(var_0.d, var_0.d, true), vec3<bool>(true, true, true), true)), !((_wgslsmith_f_op_f32(-var_0.c) >= _wgslsmith_f_op_f32(-151f + var_0.c)) && global0.x));
    var var_2 = Struct_2(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(var_0.c))), var_0.c)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1029f, var_0.c, -1250f, var_0.c))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2282f, 1088f, var_0.c, 256f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-880f, -2128f, var_0.c, var_0.c))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 997f, var_0.c, 2182f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.c, var_0.c, var_0.c, -183f)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, 4294967295u, var_0.b), var_0.a), ~var_0.a), abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, 15263u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 1u, 1u, 4294967295u)))), 28u)])));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1181f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-324f)) * var_0.c), var_2.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -565f) + -836f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_2.b))))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(min(func_2().xw, -vec2<i32>(u_input.b.x, u_input.b.x)), ~u_input.b) << (~(~var_2.a.a.zy) % vec2<u32>(32u)), reverseBits(reverseBits(firstLeadingBit(i32(-1i) * -57813i))), var_2.c, global2.zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.c, var_0.c) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(290f, 740f)))));
}

