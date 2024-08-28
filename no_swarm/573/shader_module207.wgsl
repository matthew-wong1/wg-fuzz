struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    var var_0 = _wgslsmith_div_u32(max(min(~51601u, 28070u) << ((~10384u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), u_input.e)) % 32u), u_input.e.x), ~1u);
    var var_1 = arg_1.a.e;
    let var_2 = arg_1.a.d.x;
    global0 = array<bool, 5>();
    let var_3 = Struct_1(arg_0.a, reverseBits(vec4<u32>(select(arg_0.b.x, _wgslsmith_sub_u32(arg_1.a.b.x, 4294967295u), any(vec4<bool>(var_2, false, arg_0.d.x, arg_0.d.x))), firstTrailingBit(abs(38777u)), select(~u_input.b, arg_0.b.x, select(global0[_wgslsmith_index_u32(arg_1.a.b.x, 5u)], false, true)), ~(~79454u))), -arg_1.a.c ^ -36533i, select(vec4<bool>(any(!arg_1.a.d), true, true, !arg_0.d.x), !(!vec4<bool>(arg_0.d.x, true, arg_0.d.x, false)), !vec4<bool>(all(arg_0.d.wz), var_2, select(arg_0.d.x, arg_1.a.d.x, true), true)), arg_0.e);
    return var_2;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = !vec4<bool>(!all(arg_0) | (_wgslsmith_clamp_u32(u_input.b, 25823u, 67552u) == 1u), true, -_wgslsmith_mod_i32(-62636i, u_input.d.x) <= 16732i, func_3(Struct_1(vec4<f32>(-546f, 477f, 464f, -333f), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 4294967295u, 8792u), vec4<u32>(1u, 8337u, u_input.e.x, u_input.b)), 51421i >> (u_input.e.x % 32u), select(vec4<bool>(arg_1.x, arg_1.x, arg_0.x, arg_1.x), vec4<bool>(true, false, false, arg_1.x), arg_0.x), vec4<i32>(10340i, arg_2.x, arg_2.x, -1i) >> (vec4<u32>(39446u, 4294967295u, 35869u, 27942u) % vec4<u32>(32u))), Struct_2(Struct_1(vec4<f32>(474f, -774f, -1113f, 1431f), vec4<u32>(16242u, 28657u, u_input.e.x, 0u), 19063i, vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(17367u, 5u)], false, global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec4<i32>(u_input.a.x, 2147483647i, u_input.c, 9258i)), firstTrailingBit(u_input.c), _wgslsmith_div_vec3_u32(vec3<u32>(78877u, 1u, 96968u), vec3<u32>(227u, 0u, u_input.b)))));
    let var_1 = !any(select(vec3<bool>(true, all(vec3<bool>(arg_1.x, arg_0.x, true)), arg_2.x >= u_input.c), var_0.wzw, var_0.yxw));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1870f * 2498f), _wgslsmith_f_op_f32(934f + 463f), -524f, 923f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_f_op_f32(max(-1362f, -120f)), _wgslsmith_f_op_f32(sign(2286f)), _wgslsmith_f_op_f32(round(293f))), vec4<f32>(_wgslsmith_f_op_f32(1237f * 341f), -1238f, _wgslsmith_f_op_f32(f32(-1f) * -1135f), _wgslsmith_f_op_f32(f32(-1f) * -566f)), arg_2.x < 14656i))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, max(4294967295u, 1u), u_input.b, abs(4294967295u)), ~abs(~vec4<u32>(27496u, 49677u, u_input.b, u_input.e.x))), u_input.a.x, select(var_0, var_0, !any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false))), abs(arg_2));
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_2.a.ww);
    var var_4 = _wgslsmith_mod_vec4_u32(var_2.b, reverseBits(abs(var_2.b << (vec4<u32>(var_2.b.x, u_input.b, var_2.b.x, u_input.e.x) % vec4<u32>(32u)))) ^ (reverseBits(~vec4<u32>(0u, 89072u, u_input.e.x, var_2.b.x)) & var_2.b));
    return Struct_1(var_2.a, vec4<u32>(countOneBits(abs(var_4.x)) >> (min(var_2.b.x, _wgslsmith_mult_u32(41387u, u_input.e.x)) % 32u), ~u_input.e.x, ~1u, _wgslsmith_dot_vec3_u32(var_4.wxz, vec3<u32>(1u, var_4.x, u_input.b << (0u % 32u)))), -1i, vec4<bool>(true && arg_0.x, true, -717f >= _wgslsmith_f_op_f32(var_2.a.x + -817f), any(vec2<bool>(arg_1.x && true, false))), _wgslsmith_mod_vec4_i32(-var_2.e, ~var_2.e));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.a.x - 1124f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_2.a.x, arg_2.a.x), 536f))))));
    global0 = array<bool, 5>();
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1473f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_1.a.a.x, arg_1.a.a.x))))))));
    var var_1 = func_2(arg_1.a.d.zzz, arg_0.a.d.zwz, ~vec4<i32>(reverseBits(-14784i << (arg_2.b.x % 32u)), -2147483647i, -_wgslsmith_dot_vec2_i32(arg_2.e.zx, u_input.d.yz), -8882i));
    var var_2 = firstTrailingBit(~reverseBits(vec4<u32>(var_1.b.x, 4294967295u, var_1.b.x, abs(22617u))));
    return func_2(vec3<bool>(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -864f), 934f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.a.a.x))), arg_2.e.x > 2147483647i), !(!(!arg_2.d.yww)), countOneBits(arg_3.a.e)).b.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>) -> Struct_1 {
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    var var_0 = u_input.b;
    var_0 = min(_wgslsmith_sub_u32(max(u_input.b, u_input.e.x), func_4(Struct_2(func_2(vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], arg_0.x, arg_0.x), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]), vec4<i32>(41404i, u_input.d.x, -39015i, u_input.c)), 1i, vec3<u32>(u_input.e.x, 79638u, 95681u) & vec3<u32>(36992u, 4294967295u, 1u)), Struct_2(Struct_1(vec4<f32>(327f, -1006f, -1541f, 2630f), vec4<u32>(u_input.b, 78514u, 1u, 92887u), 85917i, vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], true, global0[_wgslsmith_index_u32(u_input.e.x, 5u)], true), vec4<i32>(-40954i, 0i, arg_1.x, -29611i)), _wgslsmith_dot_vec4_i32(vec4<i32>(21259i, arg_1.x, arg_1.x, -2933i), vec4<i32>(-1i, u_input.d.x, 1i, u_input.a.x)), ~vec3<u32>(u_input.b, u_input.e.x, 1u)), func_2(vec3<bool>(global0[_wgslsmith_index_u32(7845u, 5u)], true, arg_0.x), !vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(74007u, 5u)], false), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.c, 1i, -1i), vec4<i32>(-21508i, arg_1.x, -3915i, -2502i), vec4<i32>(21294i, arg_1.x, 2147483647i, 37002i))), Struct_2(Struct_1(vec4<f32>(-416f, -236f, 1197f, 2023f), vec4<u32>(1u, u_input.e.x, 0u, 27476u), arg_1.x, vec4<bool>(false, false, true, true), vec4<i32>(arg_1.x, u_input.d.x, -4228i, -2147483647i)), -2147483647i, ~vec3<u32>(4294967295u, u_input.e.x, u_input.b)))), ~u_input.b);
    var_0 = 1u;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 849f) - _wgslsmith_div_f32(949f, -257f))), _wgslsmith_f_op_f32(f32(-1f) * -750f), _wgslsmith_f_op_f32(-936f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -769f), -553f, false))), _wgslsmith_f_op_f32(-func_2(vec3<bool>(true, true, true), vec3<bool>(true, true, true), reverseBits(vec4<i32>(-13858i, 12205i, -12492i, -6470i))).a.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.b, u_input.e.x, 0u, 77964u)), ~vec4<u32>(4294967295u, 53485u, 1u, 0u)), min(vec4<u32>(countOneBits(u_input.b), ~47959u, 104512u, _wgslsmith_sub_u32(4294967295u, u_input.e.x)), vec4<u32>(u_input.e.x ^ u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(25519u, 36266u), vec2<u32>(3382u, u_input.b)), ~0u, ~0u))), arg_1.x, vec4<bool>(arg_0.x, !func_2(vec3<bool>(false, global0[_wgslsmith_index_u32(56956u, 5u)], true), select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.e.x, 5u)]), true), vec4<i32>(arg_1.x, u_input.a.x, 0i, -1i)).d.x, true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(40476u, u_input.e.x, u_input.e.x)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, 15083u), vec3<u32>(u_input.e.x, 17444u, 0u))) & (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, 1u), vec4<u32>(0u, 63464u, 0u, u_input.e.x)) >> ((0u & u_input.b) % 32u)), 5u)]), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(arg_1.x), 0i & arg_1.x, _wgslsmith_sub_i32(-2147483647i, arg_1.x), _wgslsmith_mult_i32(arg_1.x, 1i)), -vec4<i32>(-35293i, -44614i, -2147483647i, arg_1.x))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-388f - _wgslsmith_f_op_f32(-arg_1.a.x))), -811f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.a.x)), arg_0.a.x))), abs(~arg_0.b & arg_0.b), countOneBits(_wgslsmith_div_i32(u_input.c, 24345i)), func_1(select(vec3<bool>(!arg_1.d.x, !global0[_wgslsmith_index_u32(arg_1.b.x, 5u)], true == global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec3<bool>(select(true, true, true), global0[_wgslsmith_index_u32(arg_1.b.x, 5u)] && arg_1.d.x, any(vec3<bool>(arg_1.d.x, global0[_wgslsmith_index_u32(u_input.e.x, 5u)], false))), vec3<bool>(func_2(vec3<bool>(false, true, arg_1.d.x), arg_0.d.yyy, arg_0.e).d.x, 289f < arg_1.a.x, true)), firstTrailingBit(~vec3<i32>(arg_0.e.x, 8048i, u_input.c)) >> (arg_1.b.zxw % vec3<u32>(32u))).d, vec4<i32>(-2147483647i, 49446i, -32440i, ~(~(-47801i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    let var_0 = func_5(func_1(vec3<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.e.x, u_input.e.x), 5u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u & u_input.b, ~4294967295u, 1u), 5u)], true), _wgslsmith_mod_vec3_i32(reverseBits(u_input.a >> (vec3<u32>(18086u, 4294967295u, u_input.e.x) % vec3<u32>(32u))), u_input.a)), func_1(select(select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], true, global0[_wgslsmith_index_u32(u_input.b, 5u)]), vec3<bool>(true, true, true), func_1(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], true, false), vec3<i32>(u_input.c, 2147483647i, u_input.c)).d.wwz), vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(79439u, 5u)], global0[_wgslsmith_index_u32(u_input.e.x, 5u)], true)), u_input.e.x < u_input.b, !global0[_wgslsmith_index_u32(4294967295u, 5u)]), 0u >= u_input.e.x), ~vec3<i32>(0i, func_2(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 5u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 5u)], global0[_wgslsmith_index_u32(112856u, 5u)], false), vec4<i32>(u_input.d.x, 0i, u_input.d.x, u_input.d.x)).e.x, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.a.x, u_input.a.x, -1012i)))));
    var var_1 = 324f;
    let var_2 = ~(~_wgslsmith_add_vec2_u32(vec2<u32>(firstTrailingBit(var_0.b.x), 821u), vec2<u32>(0u, u_input.b >> (7675u % 32u))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x - -524f)))))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-190f, _wgslsmith_f_op_f32(ceil(-142f)), _wgslsmith_f_op_f32(abs(var_0.a.x)), -894f), _wgslsmith_f_op_vec4_f32(-var_0.a), func_2(!var_0.d.zxw, func_5(var_0, var_0).d.zwy, vec4<i32>(var_0.e.x, u_input.d.x, 1i, var_0.c)).d.x))), ~func_1(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.b.x, 5u)], global0[_wgslsmith_index_u32(29u, 5u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.b.x, 5u)], var_0.d.x), false), func_2(func_5(var_0, Struct_1(vec4<f32>(var_0.a.x, 1000f, var_0.a.x, 1057f), vec4<u32>(var_2.x, 0u, 6579u, 71313u), var_0.e.x, var_0.d, vec4<i32>(8877i, var_0.c, var_0.e.x, u_input.c))).d.zyx, !var_0.d.xww, vec4<i32>(u_input.d.x, var_0.e.x, var_0.c, var_0.e.x) ^ var_0.e).e.xwx).b, u_input.d.x >> (var_2.x % 32u), !var_0.d, -min(var_0.e, min(~vec4<i32>(3065i, -1i, u_input.c, -1i), var_0.e << (vec4<u32>(0u, 13580u, 1u, u_input.b) % vec4<u32>(32u)))));
    var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.x, reverseBits(~(-vec2<i32>(2147483647i, 816i))), _wgslsmith_mult_u32(u_input.b, ~_wgslsmith_div_u32(var_2.x | u_input.e.x, u_input.e.x)), _wgslsmith_f_op_vec2_f32(floor(var_0.a.zx)), vec2<i32>(1i, 1i));
}

