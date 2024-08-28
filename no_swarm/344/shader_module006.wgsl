struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: array<Struct_4, 1>;

var<private> global2: array<i32, 8> = array<i32, 8>(36238i, -52333i, 2147483647i, 3532i, -9471i, 0i, 30114i, i32(-2147483648));

var<private> global3: Struct_4;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<f32> {
    let var_0 = vec3<u32>(1u, 0u, 0u);
    var var_1 = vec2<bool>(!(627f < global3.b), any(!(!select(vec2<bool>(false, false), global3.a.xy, vec2<bool>(true, global3.a.x)))));
    global2 = array<i32, 8>();
    global2 = array<i32, 8>();
    var_1 = select(!(!vec2<bool>(var_1.x && false, true)), select(vec2<bool>(all(vec4<bool>(false, global3.a.x, var_1.x, false)), true), !(!select(vec2<bool>(false, global3.a.x), global3.a.zw, vec2<bool>(var_1.x, true))), vec2<bool>(!var_1.x, any(select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(true, true, true, var_1.x), vec4<bool>(true, false, false, global3.a.x))))), vec2<bool>(true, 4294967295u < _wgslsmith_mult_u32(~var_0.x, var_0.x | var_0.x)));
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.b, global3.b), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global3.b)), _wgslsmith_f_op_f32(max(global3.b, 651f)))), _wgslsmith_f_op_f32(ceil(-2250f))), select(vec2<bool>(!global3.a.x == var_1.x, true), global3.a.ww, false)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_5 {
    var var_0 = vec3<i32>(global2[_wgslsmith_index_u32(19627u, 8u)], ~(~global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(148u, 104280u), 8u)]), u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3()), arg_0)));
    let var_2 = ~4294967295u;
    var_0 = abs(countOneBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(var_0.x, -2147483647i, global2[_wgslsmith_index_u32(var_2, 8u)])) << (~vec3<u32>(4294967295u, 4294967295u, 7560u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(0i, global2[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_mod_i32(-2147483647i, -9233i), -var_0.x), abs(select(vec3<i32>(0i, u_input.a.x, -2147483647i), vec3<i32>(var_0.x, global2[_wgslsmith_index_u32(119500u, 8u)], -2676i), global3.a.x)))));
    global1 = array<Struct_4, 1>();
    return Struct_5(Struct_1(u_input.a), _wgslsmith_mult_vec2_u32(min(max(firstLeadingBit(vec2<u32>(var_2, 4294967295u)), ~vec2<u32>(4294967295u, var_2)), abs(firstTrailingBit(vec2<u32>(84911u, 1u)))), vec2<u32>(var_2, ~var_2)), Struct_1(~(-vec2<i32>(u_input.a.x, 2147483647i))));
}

fn func_4(arg_0: Struct_5) -> vec2<u32> {
    var var_0 = Struct_3(-reverseBits(global2[_wgslsmith_index_u32(4294967295u, 8u)]), true, vec4<u32>(firstLeadingBit((16682u << (arg_0.b.x % 32u)) << (~arg_0.b.x % 32u)), firstTrailingBit(abs(4294967295u >> (arg_0.b.x % 32u))), arg_0.b.x, abs(arg_0.b.x)), arg_0.c);
    global2 = array<i32, 8>();
    var var_1 = -1i;
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a, ~(var_0.d.a.x | 0i) << (1u % 32u), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(~2881u, 8u)], -(~(-31889i))), ~(~(-u_input.a.x))), vec4<i32>(-1i) * -abs(vec4<i32>(arg_0.c.a.x, var_0.a, u_input.a.x, -1i)));
    return abs(~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(var_0.c.xy, var_0.c.xz), vec2<u32>(arg_0.b.x, var_0.c.x))) ^ arg_0.b;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-3145f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global3.b)), _wgslsmith_f_op_f32(round(-385f)))))) * global3.b);
    let var_1 = ~_wgslsmith_div_vec2_u32(arg_1.c.xw, ~(~vec2<u32>(arg_2.x, 1u)));
    let var_2 = Struct_5(arg_1.d, vec2<u32>(select(~arg_1.c.x, 0u, true), ~reverseBits(arg_2.x)) ^ countOneBits(arg_1.c.wy >> (vec2<u32>(13214u, 4294967295u) % vec2<u32>(32u))), arg_1.d);
    let var_3 = ~_wgslsmith_div_i32((firstLeadingBit(-73710i) | arg_1.d.a.x) & _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_1.a, 2147483647i), vec3<i32>(1i, -36944i, arg_3.a.x)), ~var_2.c.a.x), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b, global3.b) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1008f, -739f) * vec2<f32>(var_0, global3.b)))).c.a.x);
    let var_4 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_2.x, select(var_2.b.x, arg_2.x, true), select(var_1.x, 0u, -465f <= var_0)), _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(var_2.b.x, 4294967295u, 4294967295u), ~(49714u >> (var_1.x % 32u))), 60323u), _wgslsmith_mult_u32(26771u, countOneBits(~(~4294967295u))));
    return Struct_5(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3.b, -231f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b, global3.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1737f, var_0) - vec2<f32>(var_0, 392f))))).c, _wgslsmith_div_vec2_u32(arg_2, _wgslsmith_div_vec2_u32(func_2(vec2<f32>(-455f, -396f)).b, ~_wgslsmith_mult_vec2_u32(arg_2, var_1))), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, 921f) - vec2<f32>(_wgslsmith_f_op_f32(sign(-1745f)), _wgslsmith_f_op_f32(f32(-1f) * -134f)))).a);
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: Struct_1, arg_3: bool) -> Struct_4 {
    var var_0 = vec2<bool>(true, arg_3);
    var_0 = vec2<bool>(global3.a.x & true, true);
    global1 = array<Struct_4, 1>();
    var_0 = vec2<bool>(true, arg_3);
    let var_1 = Struct_2(arg_2, true, 1000f, func_5(!(!global3.a.wyx), Struct_3(i32(-1i) * -arg_1.a.a.x, any(!vec4<bool>(false, true, global3.a.x, true)), abs(vec4<u32>(4294967295u, arg_1.b.x, 45526u, 19035u) >> (vec4<u32>(0u, arg_1.b.x, arg_1.b.x, 20540u) % vec4<u32>(32u))), Struct_1(func_5(vec3<bool>(arg_3, true, true), Struct_3(arg_2.a.x, var_0.x, vec4<u32>(arg_1.b.x, 1u, 0u, 4294967295u), arg_2), arg_1.b, arg_1.c).a.a)), countOneBits((vec2<u32>(82308u, arg_1.b.x) | vec2<u32>(1u, arg_1.b.x)) | arg_1.b), Struct_1(vec2<i32>(-8932i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(arg_1.b.x, 8u)], 2147483647i), arg_2.a)))).c);
    return global1[_wgslsmith_index_u32(~abs(1u), 1u)];
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_4, 1>();
    let var_0 = func_6(vec4<bool>(false, global3.a.x, all(vec4<bool>(any(vec4<bool>(false, global3.a.x, global3.a.x, true)), false && global3.a.x, true, true)), (u_input.a.x & global2[_wgslsmith_index_u32(~0u, 8u)]) < _wgslsmith_dot_vec3_i32(~vec3<i32>(-15472i, 1i, global2[_wgslsmith_index_u32(1u, 8u)]), vec3<i32>(23227i, -2147483647i, u_input.a.x) ^ vec3<i32>(30811i, u_input.a.x, -1i))), func_5(vec3<bool>(global3.a.x, global3.a.x, false), Struct_3(global2[_wgslsmith_index_u32(1u, 8u)], !(global3.a.x != true), ~vec4<u32>(1u, 1u, 1u, 1u), Struct_1(vec2<i32>(1i, -2147483647i))), func_4(func_2(vec2<f32>(-564f, global3.b))), Struct_1(u_input.a << (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), func_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global3.b, global3.b), global3.b), vec2<f32>(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(exp2(global3.b))))).a, !(!global3.a.x && false));
    var var_1 = -48070i;
    var var_2 = global2[_wgslsmith_index_u32(1u, 8u)];
    var_2 = ~(-(~(~select(21503i, global2[_wgslsmith_index_u32(0u, 8u)], global3.a.x))));
    return Struct_1(abs(u_input.a >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_sub_i32(func_5(vec3<bool>(true, true, all(!global3.a.zwz)), Struct_3(u_input.a.x, global3.a.x, vec4<u32>(1u, 0u, 1u, ~87151u), func_5(select(vec3<bool>(global3.a.x, global3.a.x, global3.a.x), global3.a.xxy, vec3<bool>(true, true, true)), Struct_3(-1i, global3.a.x, vec4<u32>(4294967295u, 0u, 4234u, 4294967295u), Struct_1(var_0.a)), vec2<u32>(1u, 1u), func_1()).a), vec2<u32>(~_wgslsmith_clamp_u32(67444u, 70716u, 1u), ~firstTrailingBit(1u)), Struct_1(_wgslsmith_add_vec2_i32(~vec2<i32>(20760i, -2147483647i), _wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, vec2<i32>(-6349i, global2[_wgslsmith_index_u32(21232u, 8u)]))))).a.a.x, _wgslsmith_clamp_i32(~(-10896i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(5259i, u_input.a.x, global2[_wgslsmith_index_u32(18153u, 8u)]), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 0i, 6365i), vec3<i32>(-13828i, 5742i, global2[_wgslsmith_index_u32(4294967295u, 8u)]))), -56032i));
    var_1 = _wgslsmith_mult_i32(u_input.a.x, func_1().a.x);
    var var_2 = reverseBits(~_wgslsmith_div_vec2_u32(min(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 38450u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 17892u), vec2<u32>(4294967295u, 84009u)))) >> (func_4(Struct_5(func_1(), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 47456u), firstTrailingBit(vec2<u32>(7788u, 68406u))), Struct_1(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], -42579i)))) % vec2<u32>(32u));
    var var_3 = all(!global3.a.yzw);
    var var_4 = Struct_3(_wgslsmith_add_i32(_wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_div_i32(u_input.a.x, var_0.a.x)), ~_wgslsmith_div_i32(global2[_wgslsmith_index_u32(0u, 8u)], u_input.a.x)), 0i), false, firstTrailingBit(vec4<u32>(~_wgslsmith_div_u32(var_2.x, var_2.x), _wgslsmith_mod_u32(~47621u, ~var_2.x), 5010u, _wgslsmith_clamp_u32(~var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, 23847u, 4294967295u, var_2.x)), ~1u))), func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1200f, global3.b)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1524f, global3.b)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.b, 920f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(392f, global3.b)))))))).a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-847f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(524f + 117f) - global3.b)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_4.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2158f, -1218f, global3.b) - vec3<f32>(1902f, -259f, 933f))))))), reverseBits(-2147483647i), abs(abs(var_0.a.x)));
}

