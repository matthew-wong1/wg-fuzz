struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: vec3<u32>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(1u, 8810u, 12861u, 1u, 89119u);

var<private> global1: vec2<u32>;

var<private> global2: Struct_4 = Struct_4(false, vec2<f32>(1227f, -468f), vec3<u32>(4938u, 1u, 1805u), Struct_3(vec4<u32>(10262u, 1u, 7524u, 1u), vec4<u32>(4294967295u, 43981u, 1u, 71327u), vec3<u32>(0u, 24236u, 4294967295u)), Struct_1(20558u, vec4<i32>(0i, i32(-2147483648), -19097i, i32(-2147483648))));

var<private> global3: Struct_2 = Struct_2(1551f, true);

var<private> global4: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(true, vec2<f32>(-554f, 1198f), vec3<u32>(1u, 1u, 1u), Struct_3(vec4<u32>(4294967295u, 52297u, 13337u, 58818u), vec4<u32>(25329u, 4294967295u, 0u, 4954u), vec3<u32>(64719u, 1u, 1u)), Struct_1(54736u, vec4<i32>(5320i, 6725i, -1i, -11782i))));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> vec2<bool> {
    global2 = Struct_4((!(arg_0.b.x > 1433f) & (all(vec2<bool>(true, global3.b)) == arg_0.a)) != false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1275f, global2.b.x)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.a, 703f), global2.b, vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(min(global2.b, vec2<f32>(arg_0.b.x, -493f))))))), select(arg_0.c, _wgslsmith_mod_vec3_u32(min(vec3<u32>(27916u, global2.c.x, arg_0.d.a.x), vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], u_input.a, global2.c.x)), countOneBits(vec3<u32>(arg_2.x, 4294967295u, 1u))), !(!vec3<bool>(false, global2.a, true))) | ~global2.c, global2.d, Struct_1(arg_0.c.x, _wgslsmith_add_vec4_i32(~global2.e.b, select(vec4<i32>(u_input.b, global2.e.b.x, arg_1.b.x, global2.e.b.x), global2.e.b, vec4<bool>(false, false, true, true)))));
    global3 = Struct_2(_wgslsmith_f_op_f32(ceil(global2.b.x)), true);
    var var_0 = Struct_1(max(_wgslsmith_mod_u32(~(~0u), _wgslsmith_mod_u32(1u, reverseBits(579u))), arg_3.a), arg_0.e.b);
    global3 = Struct_2(_wgslsmith_f_op_f32(-1f), false);
    var var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(arg_3.b.x, 2147483647i), -arg_3.b.x, 2147483647i, select(-66890i, 69910i, !global2.a)), arg_1.b | ~_wgslsmith_sub_vec4_i32(arg_3.b, var_0.b)), ~(~vec4<i32>(u_input.b, -1i, -2147483647i, 0i) << (firstTrailingBit(arg_0.d.b & vec4<u32>(global2.e.a, global1.x, arg_3.a, 16610u)) % vec4<u32>(32u))));
    return vec2<bool>(global2.a, arg_0.a | true);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_3) -> u32 {
    let var_0 = select(!select(select(vec2<bool>(true, true), select(vec2<bool>(arg_0.b, false), vec2<bool>(global2.a, true), vec2<bool>(true, true)), vec2<bool>(global3.b, true)), func_3(global4[_wgslsmith_index_u32(79261u, 1u)], global2.e, arg_2.a.xxy & global2.d.c, Struct_1(3340u, vec4<i32>(-1i, 0i, global2.e.b.x, arg_1.x))), any(vec3<bool>(arg_0.b, true, global3.b))), vec2<bool>(any(func_3(Struct_4(true, global2.b, vec3<u32>(1u, arg_2.c.x, 22222u), Struct_3(global2.d.b, arg_2.b, global2.c), global2.e), global2.e, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 79339u, 6496u), Struct_1(global1.x, vec4<i32>(-30638i, -16498i, arg_1.x, u_input.b)))), all(vec4<bool>(!global2.a, true, true, all(vec2<bool>(global2.a, true))))), false);
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, 232f, 100f) - vec3<f32>(global3.a, global2.b.x, -695f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1487f, -1965f, global2.b.x))) - vec3<f32>(-760f, 1417f, _wgslsmith_f_op_f32(-241f * arg_0.a))))));
    global4 = array<Struct_4, 1>();
    global1 = ~(~(~(~firstTrailingBit(vec2<u32>(64804u, global0[_wgslsmith_index_u32(global1.x, 5u)])))));
    return ~54232u;
}

fn func_1() -> vec3<bool> {
    global2 = global4[_wgslsmith_index_u32(1u & global0[_wgslsmith_index_u32(u_input.c, 5u)], 1u)];
    var var_0 = global4[_wgslsmith_index_u32(~(~func_2(Struct_2(_wgslsmith_f_op_f32(1479f * -453f), 11152u > global1.x), vec4<i32>(-5567i, -1i, -64048i, 0i), global2.d)), 1u)];
    global1 = _wgslsmith_add_vec2_u32(countOneBits(_wgslsmith_div_vec2_u32(select(~var_0.d.b.xy, countOneBits(vec2<u32>(4294967295u, 58776u)), !vec2<bool>(true, global3.b)), global2.d.a.yz)), firstTrailingBit(vec2<u32>(~var_0.c.x, global2.c.x ^ u_input.a) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))));
    let var_1 = Struct_1(global0[_wgslsmith_index_u32(1u, 5u)], firstTrailingBit(max(vec4<i32>(-global2.e.b.x, -2147483647i, select(0i, var_0.e.b.x, global3.b), _wgslsmith_mult_i32(u_input.b, var_0.e.b.x)), firstTrailingBit(vec4<i32>(global2.e.b.x, 0i, 1i, u_input.b)))));
    global4 = array<Struct_4, 1>();
    return vec3<bool>(select(false, select(false, true, false), true), all(!select(vec3<bool>(false, false, false), vec3<bool>(true, global2.a, global2.a), var_0.a)) & true, any(vec4<bool>(func_3(global4[_wgslsmith_index_u32(4294967295u, 1u)], Struct_1(global0[_wgslsmith_index_u32(1u, 5u)], var_0.e.b), vec3<u32>(31709u, 15248u, global1.x), global2.e).x && any(vec4<bool>(global2.a, true, false, false)), !global3.b, _wgslsmith_mult_u32(23828u, global1.x) > u_input.a, global2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 5>();
    var var_0 = Struct_4(true, global2.b, ~global2.c, global2.d, global2.e);
    var var_1 = ~(_wgslsmith_mod_i32(u_input.b, _wgslsmith_div_i32(_wgslsmith_div_i32(var_0.e.b.x, -2147483647i), _wgslsmith_add_i32(-2147483647i, u_input.b))) >> (~global1.x % 32u));
    global2 = Struct_4(!all(func_1()), vec2<f32>(_wgslsmith_f_op_f32(sign(788f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2264f + -566f)))), global2.c, var_0.d, Struct_1(0u, var_0.e.b));
    global0 = array<u32, 5>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, global2.b.x, 998f, global3.a))))))));
    var_0 = Struct_4(global3.b, var_2.zy, var_0.d.b.yzz & ~select(vec3<u32>(32082u, var_0.e.a, global1.x), vec3<u32>(u_input.a, 0u, 11687u), select(vec3<bool>(false, true, true), vec3<bool>(false, var_0.a, true), var_0.a)), Struct_3(firstLeadingBit(global2.d.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.e.a, 1u, 1u, ~global0[_wgslsmith_index_u32(5439u, 5u)]), var_0.d.b, firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.d.b.x, 0u, var_0.c.x, 57133u), global2.d.a))), ~(global2.c >> (vec3<u32>(global2.e.a, 0u, u_input.c) % vec3<u32>(32u))) | abs(select(global2.c, vec3<u32>(1u, global0[_wgslsmith_index_u32(98496u, 5u)], 63023u), vec3<bool>(var_0.a, global3.b, false)))), global2.e);
    global1 = vec2<u32>(global2.c.x, ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-721f, -1197f)), _wgslsmith_f_op_f32(round(-711f)), global3.b)), _wgslsmith_f_op_f32(trunc(1526f))))), global3.a, 1f, _wgslsmith_add_vec3_i32(global2.e.b.zxy, reverseBits(_wgslsmith_mult_vec3_i32(abs(var_0.e.b.zxx), abs(vec3<i32>(-53922i, 39070i, -2147483647i))))));
}

