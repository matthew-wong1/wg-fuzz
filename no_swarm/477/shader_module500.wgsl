struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(11084i, -31171i, 49357i);

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<f32>(-247f, 1023f, 1000f, -257f), vec4<i32>(1i, 1i, -1i, 2147483647i), 0i), Struct_1(vec4<f32>(-1423f, 1630f, -2258f, 1396f), vec4<i32>(-1i, i32(-2147483648), -30001i, -1i), -28245i), Struct_1(vec4<f32>(-1403f, 1789f, -813f, -1000f), vec4<i32>(-2484i, -1i, 1i, 2147483647i), -29565i), Struct_1(vec4<f32>(-525f, -742f, 1205f, 925f), vec4<i32>(0i, 7510i, 22302i, i32(-2147483648)), 0i), Struct_1(vec4<f32>(-455f, 1684f, 1767f, 2492f), vec4<i32>(-1i, 2147483647i, -45751i, -34893i), 2147483647i), Struct_1(vec4<f32>(-349f, -1243f, -1360f, -856f), vec4<i32>(1i, i32(-2147483648), -56295i, 18553i), -44784i), Struct_1(vec4<f32>(-932f, 850f, -825f, -2195f), vec4<i32>(1i, -5108i, 14037i, 2147483647i), -8412i));

var<private> global2: array<bool, 26>;

var<private> global3: i32;

var<private> global4: Struct_2 = Struct_2(vec3<f32>(-1000f, 454f, 206f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1259f, -246f, global4.a.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-421f, 1276f, global4.a.x) * vec3<f32>(-580f, global4.a.x, global4.a.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global4.a, global4.a)) + vec3<f32>(_wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_div_f32(-135f, global4.a.x), _wgslsmith_div_f32(322f, -1448f)))));
    var var_1 = global1[_wgslsmith_index_u32(abs(u_input.b), 7u)];
    let var_2 = u_input.b == 0u;
    global4 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, var_0.a.x)));
    global2 = array<bool, 26>();
    return 36163u;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.b ^ func_3(!vec3<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)], true)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 4294967295u), 26u)], true)), 7u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.x), -1819f)), _wgslsmith_f_op_f32(-247f + _wgslsmith_f_op_f32(511f - 1566f)))) * var_0.a.xz);
    let var_2 = select(!select(vec3<bool>(arg_0, arg_0, false), select(select(vec3<bool>(arg_0, true, false), vec3<bool>(false, arg_0, arg_0), false), !vec3<bool>(arg_0, true, true), arg_0 & global2[_wgslsmith_index_u32(u_input.b, 26u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(5103u, 26u)] && arg_0, any(vec3<bool>(false, true, true)))), select(select(!vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)]), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, global2[_wgslsmith_index_u32(u_input.b, 26u)], false), true), true), vec3<bool>(true, true, true), all(select(select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(1u, 26u)]), true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 26u)], arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, global2[_wgslsmith_index_u32(1u, 26u)]), vec2<bool>(true, true))))), select(select(vec3<bool>(true, any(vec3<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 26u)])), true), vec3<bool>(select(global2[_wgslsmith_index_u32(u_input.b, 26u)], arg_0, false), true, any(vec2<bool>(global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(30078u, 26u)]))), vec3<bool>(true, arg_0, global4.a.x < global4.a.x)), !select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 26u)], false, false), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)], true), true), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 26u)]));
    var var_3 = vec3<bool>(false, ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(70033u, 89132u), vec2<u32>(u_input.b, 46700u)), ~vec2<u32>(23223u, 48924u)) >= ~(u_input.b << (~4294967295u % 32u)), arg_0);
    let var_4 = true;
    return Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.a.wzz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.x, -734f, var_0.a.x))))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    global4 = arg_0;
    var var_0 = arg_1.b >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, ~u_input.b, 1u, ~u_input.b), select(select(vec4<u32>(1u, u_input.b, u_input.b, 0u), vec4<u32>(15732u, 0u, u_input.b, 16331u), global2[_wgslsmith_index_u32(u_input.b, 26u)]), select(vec4<u32>(0u, u_input.b, u_input.b, 12090u), vec4<u32>(0u, u_input.b, u_input.b, 43632u), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)], true)), !vec4<bool>(global2[_wgslsmith_index_u32(1913u, 26u)], global2[_wgslsmith_index_u32(72195u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)]))) % vec4<u32>(32u));
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(max(604f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x)))), _wgslsmith_f_op_f32(max(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.x, arg_0.a.x, false))))), arg_1.a.x, -2021f), ~vec3<i32>(-countOneBits(1i), arg_1.c, global0.x));
    let var_2 = func_2(true);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1929f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + _wgslsmith_f_op_f32(var_1.a.x * arg_1.a.x)), -731f))), -_wgslsmith_mult_vec4_i32(-u_input.a, (u_input.a ^ vec4<i32>(var_1.b.x, 30560i, 1i, -1i)) << (countOneBits(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)) % vec4<u32>(32u))), -17773i);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(222f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_div_f32(-793f, var_3.a.x))))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(vec4<f32>(-1185f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(global2[_wgslsmith_index_u32(8599u, 26u)]), Struct_1(vec4<f32>(global4.a.x, 865f, -1072f, -861f), vec4<i32>(u_input.a.x, 1i, global0.x, u_input.a.x), -6464i)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(908f, 926f))), _wgslsmith_f_op_f32(855f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.a.x), -642f)))), -firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-16176i, u_input.a.x, 2147483647i, global0.x), u_input.a)), i32(-1i) * -global0.x);
    var var_1 = vec4<u32>(countOneBits(4294967295u), u_input.b, ~u_input.b | 0u, ~abs(~17930u));
    global1 = array<Struct_1, 7>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(657f))), _wgslsmith_f_op_f32(trunc(-420f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(-565f, global4.a.x)), -1505f)), u_input.a.wxy);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1013f, global4.a.x, var_2.a.x, var_2.a.x)) + _wgslsmith_f_op_vec4_f32(select(var_0.a, var_2.a, vec4<bool>(true, false, false, arg_0)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -914f, global4.a.x, 757f) + var_0.a))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -114f)), 1f, 1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), 1851f)))), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(global0.x, global0.x, 2147483647i, var_0.b.x)), var_0.b), u_input.a), ~_wgslsmith_clamp_i32(-39046i ^ u_input.c, _wgslsmith_mult_i32(_wgslsmith_sub_i32(global0.x, 58653i), var_2.b.x ^ -2486i), global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, 10815u) | vec4<u32>(u_input.b, 50443u, 1u, 31824u), vec4<u32>(31399u, 17580u, 4294967295u, u_input.b))) ^ select(abs(vec4<u32>(1u, u_input.b, 0u, u_input.b) & _wgslsmith_div_vec4_u32(vec4<u32>(1u, 62908u, 51293u, 4294967295u), vec4<u32>(u_input.b, 0u, 32421u, u_input.b))), vec4<u32>(0u, 13744u, 4294967295u, ~0u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.x, -10145i), u_input.a.ywx) >= u_input.c);
    let var_1 = global0.yz;
    var var_2 = global1[_wgslsmith_index_u32(~abs(firstLeadingBit(~min(var_0.x, var_0.x))), 7u)];
    var_2 = func_1(u_input.b != 18089u);
    var var_3 = select(select(!vec3<bool>(global2[_wgslsmith_index_u32(27677u, 26u)] | false, !global2[_wgslsmith_index_u32(15850u, 26u)], global2[_wgslsmith_index_u32(10797u, 26u)]), vec3<bool>(all(vec2<bool>(false, true)), false, false), global2[_wgslsmith_index_u32(u_input.b, 26u)]), vec3<bool>(all(select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)]), vec3<bool>(false, false, global2[_wgslsmith_index_u32(var_0.x, 26u)]), global2[_wgslsmith_index_u32(0u, 26u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 26u)], false, true), true)), true, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, var_0.x), 26u)]), vec3<bool>(all(select(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(var_0.x, 26u)], false), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 26u)], false, global2[_wgslsmith_index_u32(var_0.x, 26u)], global2[_wgslsmith_index_u32(0u, 26u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 26u)], false, false, true), false), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(35223u, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)]))), !any(select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 26u)], true, false, global2[_wgslsmith_index_u32(8624u, 26u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)], false), false)), -(var_1.x | u_input.c) > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_1.x, global0.x, 26747i), var_2.b)));
    var var_4 = Struct_1(var_2.a, abs(u_input.a) ^ select(-(var_2.b >> (var_0 % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, 2147483647i, var_1.x, u_input.c), -u_input.a), false), -2147483647i);
    global2 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -686f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-435f)), _wgslsmith_f_op_f32(1358f + -1053f)))))));
}

