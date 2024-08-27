struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(11728u, 13960u, 58352u), vec3<u32>(1u, 7479u, 0u), vec3<u32>(42449u, 4294967295u, 80011u), vec3<u32>(83090u, 0u, 126130u), vec3<u32>(15366u, 18219u, 27244u), vec3<u32>(1u, 1u, 34454u), vec3<u32>(21894u, 4294967295u, 3329u), vec3<u32>(28077u, 0u, 31899u), vec3<u32>(115629u, 92386u, 4294967295u), vec3<u32>(52802u, 11741u, 4294967295u), vec3<u32>(1u, 4294967295u, 59647u), vec3<u32>(4294967295u, 4294967295u, 106807u), vec3<u32>(53173u, 37808u, 51688u), vec3<u32>(26961u, 62520u, 0u), vec3<u32>(12725u, 84932u, 10353u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(15640u, 4294967295u, 0u), vec3<u32>(26721u, 2403u, 31033u), vec3<u32>(13804u, 49998u, 27627u));

var<private> global2: array<i32, 22>;

var<private> global3: i32 = 6601i;

var<private> global4: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(1u, 28327u, 73098u), vec3<u32>(0u, 0u, 16399u), vec3<u32>(53881u, 1u, 57790u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(136912u, 76987u, 51123u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(18143u, 10619u, 0u), vec3<u32>(1u, 1u, 1u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = ~_wgslsmith_add_vec3_i32(-u_input.b.wzx, -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, 1i, global2[_wgslsmith_index_u32(54143u, 22u)]), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 41993i)), global2[_wgslsmith_index_u32(1u, 22u)], -23501i));
    let var_1 = 52363i << (_wgslsmith_clamp_u32(~_wgslsmith_div_u32(~53306u, 1u), 32501u, _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(select(21572u, 1u, false), _wgslsmith_sub_u32(arg_0.x, 0u)), abs(u_input.a.x) << (1u % 32u))) % 32u);
    var var_2 = Struct_2(vec3<i32>(_wgslsmith_add_i32(~var_1, var_1), global2[_wgslsmith_index_u32(~max(arg_0.x, u_input.c), 22u)], _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(var_0.x, u_input.b.x)), max(var_1, global2[_wgslsmith_index_u32(20690u, 22u)]))), Struct_1(~vec3<u32>(abs(u_input.c), select(56010u, arg_0.x, true), 6866u), false, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(440f, 153f), vec2<f32>(-542f, -974f)) - vec2<f32>(318f, 1790f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-370f, 1836f) * vec2<f32>(-189f, -876f)))))), -1137f, 1u));
    var_2 = Struct_2(var_2.a, Struct_1(global4[_wgslsmith_index_u32(select(~40739u >> (~u_input.a.x % 32u), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_div_u32(var_2.b.e, 4294967295u), var_2.b.e), !all(vec4<bool>(true, false, false, var_2.b.b))), 8u)], true, var_2.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.d * var_2.b.d))), ~(~4294967295u & min(34506u, var_2.b.e))));
    var var_3 = select(select(vec2<bool>(true, var_2.b.b), vec2<bool>(var_2.b.b || any(vec3<bool>(var_2.b.b, false, false)), all(vec3<bool>(false, true, var_2.b.b))), vec2<bool>(var_2.b.b, true)), !vec2<bool>(true, all(vec2<bool>(var_2.b.b, true))), !vec2<bool>(true, !(true & var_2.b.b)));
    return arg_0.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> f32 {
    let var_0 = vec4<u32>(~1u, u_input.c, u_input.c, firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c, u_input.a.x), global4[_wgslsmith_index_u32(u_input.c, 8u)]), countOneBits(global4[_wgslsmith_index_u32(u_input.a.x, 8u)]))) & func_3(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.x, -1525f))), vec2<f32>(1055f, 530f), vec2<bool>(false, false))), arg_1.xz)) + vec2<f32>(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)), -302f))));
    global0 = !((_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(626f * arg_1.x)) <= 293f) == true);
    global1 = array<vec3<u32>, 19>();
    let var_2 = ~(~1u);
    return -198f;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: f32, arg_3: vec3<bool>) -> u32 {
    var var_0 = arg_1;
    global1 = array<vec3<u32>, 19>();
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-624f * _wgslsmith_f_op_f32(func_2(-vec3<i32>(-1i, arg_1.a.a.x, u_input.b.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.b.d, arg_2, var_0.a.b.d, arg_1.a.b.d)))))), arg_1.a.b.d), -1572f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1296f * -1417f), -787f) * arg_2) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.a.b.c.x, 673f), _wgslsmith_f_op_f32(2628f * arg_2)))))), arg_1.a.b.c.x);
    return 55326u >> (_wgslsmith_mod_u32(u_input.c, 0u) % 32u);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_4(Struct_3(arg_0.d, _wgslsmith_sub_i32(_wgslsmith_add_i32(12423i, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.e, 1u, u_input.a.x), 22u)]), global2[_wgslsmith_index_u32(~14525u & (57976u | u_input.a.x), 22u)]), Struct_2(vec3<i32>(-4153i & u_input.b.x, firstLeadingBit(u_input.b.x), 0i), arg_0)));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.d, 820f, -118f))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, arg_0.d, _wgslsmith_f_op_f32(-arg_0.c.x)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.a, -1000f, -1000f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(1423f)), _wgslsmith_f_op_f32(exp2(var_0.a.c.b.d)), arg_0.c.x), vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x - -204f), -719f, arg_0.d), select(select(vec3<bool>(false, var_0.a.c.b.b, var_0.a.c.b.b), vec3<bool>(var_0.a.c.b.b, false, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b)), select(vec3<bool>(arg_0.b, false, false), vec3<bool>(false, arg_0.b, arg_0.b), arg_0.b), arg_0.b & arg_0.b))), var_0.a.c.b.b))));
    let var_2 = 20002u;
    let var_3 = ~u_input.b >> (abs(~vec4<u32>(~4294967295u, 31259u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2, 52299u), vec2<u32>(arg_0.e, var_2)))) % vec4<u32>(32u));
    global0 = select(false, true, var_0.a.c.b.b);
    return Struct_1(var_0.a.c.b.a, true, var_1.xy, _wgslsmith_f_op_f32(-arg_0.d), ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<u32>, 8>();
    global4 = array<vec3<u32>, 8>();
    let var_0 = Struct_2(min(u_input.b.xww, max(u_input.b.xzw, firstTrailingBit(u_input.b.yyy))) ^ abs(-u_input.b.xyy >> (~vec3<u32>(4294967295u, u_input.a.x, 108297u) % vec3<u32>(32u))), func_4(Struct_1(vec3<u32>(_wgslsmith_sub_u32(u_input.c, u_input.c), u_input.c, ~1u), any(vec4<bool>(true, true, false, true)), vec2<f32>(182f, _wgslsmith_f_op_f32(floor(1510f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1588f, -1390f))), func_1(vec3<bool>(true, true, true), Struct_5(Struct_2(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), Struct_1(vec3<u32>(49169u, 32532u, u_input.c), true, vec2<f32>(-1000f, -1236f), -1032f, u_input.c))), 1f, vec3<bool>(true, true, true)))));
    var var_1 = Struct_3(var_0.b.c.x, ~u_input.b.x, Struct_2(~(-(vec3<i32>(global2[_wgslsmith_index_u32(var_0.b.a.x, 22u)], 0i, u_input.b.x) << (global1[_wgslsmith_index_u32(u_input.a.x, 19u)] % vec3<u32>(32u)))), Struct_1(var_0.b.a << (~global1[_wgslsmith_index_u32(var_0.b.a.x, 19u)] % vec3<u32>(32u)), var_0.b.b, _wgslsmith_f_op_vec2_f32(var_0.b.c * vec2<f32>(-592f, var_0.b.d)), 433f, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.b.e, 6262u), u_input.a))));
    let var_2 = select(!select(vec2<bool>(var_1.c.b.b && false, !var_0.b.b), select(vec2<bool>(var_0.b.b, var_0.b.b), vec2<bool>(true, true), !var_1.c.b.b), any(select(vec3<bool>(false, var_0.b.b, var_1.c.b.b), vec3<bool>(var_1.c.b.b, var_1.c.b.b, true), var_1.c.b.b))), select(vec2<bool>(!any(vec2<bool>(var_1.c.b.b, true)), false), vec2<bool>(!var_0.b.b, false), !func_4(Struct_1(global4[_wgslsmith_index_u32(u_input.c, 8u)], var_0.b.b, var_0.b.c, 860f, var_1.c.b.e)).b), 60380u > u_input.c);
    var var_3 = ~firstLeadingBit(~_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0.b.e)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(u_input.a.x, 1u, var_1.c.b.e, u_input.c))));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -354f), var_1.c.a.x, Struct_2(-var_1.c.a, Struct_1(global4[_wgslsmith_index_u32(~var_0.b.e << (~22475u % 32u), 8u)], all(vec2<bool>(true, var_0.b.b)) & !var_2.x, func_4(var_0.b).c, 2163f, var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(1u, 22u)], var_4.c.b.a.yy, countOneBits(24907u), vec3<f32>(-1229f, var_4.c.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c.x))), min(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, var_0.a.x), vec2<i32>(global2[_wgslsmith_index_u32(var_0.b.e, 22u)], var_0.a.x)) ^ ~(-60913i), max(i32(-1i) * -29547i, var_4.c.a.x), var_0.a.x, var_4.c.a.x), (u_input.b | vec4<i32>(1i, var_1.b, -1i, u_input.b.x)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 100037u, var_4.c.b.e, 4294967295u), ~vec4<u32>(var_1.c.b.e, var_3.x, 1u, 19400u)) % vec4<u32>(32u))));
}

