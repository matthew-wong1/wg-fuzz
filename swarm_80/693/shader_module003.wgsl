struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(21330u, vec3<bool>(true, true, true), Struct_3(vec2<f32>(848f, 635f), Struct_1(vec4<i32>(-13980i, -22966i, -1i, 45748i), 621f)), 0u);

var<private> global1: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(i32(-2147483648), -1i, 48531i), vec3<i32>(1i, -42019i, 1i), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec3<i32>(-23441i, -18331i, i32(-2147483648)), vec3<i32>(-55583i, 1i, 0i), vec3<i32>(0i, -38592i, 11014i), vec3<i32>(-1i, 2147483647i, 16536i), vec3<i32>(63564i, -2517i, -1i), vec3<i32>(2147483647i, -31964i, i32(-2147483648)), vec3<i32>(71i, 28635i, 2147483647i), vec3<i32>(-17030i, -31516i, 14174i), vec3<i32>(0i, 14061i, 0i), vec3<i32>(-1i, 27448i, i32(-2147483648)), vec3<i32>(28617i, -12764i, 1i), vec3<i32>(1i, 11610i, 2147483647i), vec3<i32>(-24365i, 461i, -77247i), vec3<i32>(-16915i, 1i, 1i));

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec4<i32>(-46124i, 46667i, 1i, 1i), 683f), vec3<u32>(4294967295u, 4294967295u, 0u), Struct_1(vec4<i32>(-1i, 10581i, -33168i, 1i), 171f), vec3<i32>(27629i, -32334i, -37324i)), Struct_2(Struct_1(vec4<i32>(2147483647i, -1i, 0i, i32(-2147483648)), 692f), vec3<u32>(4294967295u, 1u, 65590u), Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), 2147483647i), 1486f), vec3<i32>(36359i, i32(-2147483648), 1i)), Struct_2(Struct_1(vec4<i32>(-18503i, 0i, 0i, -24463i), -215f), vec3<u32>(4294967295u, 22719u, 54814u), Struct_1(vec4<i32>(18551i, 2147483647i, -1i, -9049i), 1470f), vec3<i32>(1i, 2147483647i, 0i)), Struct_2(Struct_1(vec4<i32>(0i, 34711i, 2147483647i, 0i), 435f), vec3<u32>(1u, 1u, 6788u), Struct_1(vec4<i32>(38267i, i32(-2147483648), 0i, 0i), -2084f), vec3<i32>(-1i, 0i, i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 0i, 2147483647i, -55775i), -930f), vec3<u32>(0u, 1u, 56609u), Struct_1(vec4<i32>(2147483647i, -1i, 5109i, 45230i), 1123f), vec3<i32>(1i, 47328i, i32(-2147483648))));

var<private> global3: vec3<i32>;

var<private> global4: vec3<u32> = vec3<u32>(19068u, 1u, 38939u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2() -> u32 {
    var var_0 = Struct_5(13066u, select(!vec3<bool>(false | global0.b.x, true, !global0.b.x), global0.b, all(!vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x)) || (global0.c.a.x > global0.c.a.x)), global0.c, 39322u);
    global2 = array<Struct_2, 5>();
    var var_1 = true;
    global2 = array<Struct_2, 5>();
    global1 = array<vec3<i32>, 17>();
    return var_0.d;
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_4) -> vec3<u32> {
    let var_0 = true;
    global0 = Struct_5(4520u, !global0.b, global0.c, reverseBits(~(~4294967295u ^ reverseBits(arg_2.a))));
    let var_1 = Struct_4(select(~0u, min(abs(firstLeadingBit(0u)), 30189u), select(var_0, !(!var_0), any(global0.b.xx))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.b.b) * _wgslsmith_f_op_f32(580f - global0.c.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global0.c.b.b)))), _wgslsmith_f_op_f32(sign(1f)))), global0.c.a.x, arg_2.d, Struct_2(global0.c.b, arg_1, Struct_1(u_input.b | abs(vec4<i32>(global0.c.b.a.x, -1i, u_input.a, global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a.x))), abs(vec3<i32>(arg_2.d.a.a.x, 10686i, -1i)) & vec3<i32>(_wgslsmith_mod_i32(2147483647i, arg_2.d.a.a.x), global3.x, global0.c.b.a.x | -70094i)));
    var var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-477f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.c.b.b)) - _wgslsmith_f_op_f32(-var_1.e.c.b))), -147f), Struct_1(vec4<i32>(~u_input.b.x, ~(-1i), u_input.a, -47959i), arg_2.e.a.b));
    global2 = array<Struct_2, 5>();
    return vec3<u32>(abs(_wgslsmith_mult_u32(0u, 1u)), _wgslsmith_sub_u32(max(arg_2.a, 0u), 0u), 19969u);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_4) -> Struct_3 {
    global4 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(1u, ~21523u << (func_2() % 32u)), global0.d & 4294967295u, min(90239u, ~max(arg_2.a, 0u))), _wgslsmith_mult_vec3_u32(~(~func_3(global0.b.x, arg_2.d.b, Struct_4(0u, arg_2.b, 487f, Struct_2(global0.c.b, vec3<u32>(16955u, 13663u, 1u), Struct_1(arg_2.e.c.a, -752f), global1[_wgslsmith_index_u32(arg_2.d.b.x, 17u)]), arg_2.e))), arg_1 | _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 101168u, 73425u), vec3<u32>(4294967295u, arg_1.x, arg_1.x)), vec3<u32>(1u, 1u, 1u))));
    global2 = array<Struct_2, 5>();
    global4 = countOneBits(arg_1 & arg_2.e.b);
    global3 = abs(-(_wgslsmith_sub_vec3_i32(vec3<i32>(global3.x, global3.x, -26814i), vec3<i32>(20402i, -1i, u_input.a)) >> (arg_2.e.b % vec3<u32>(32u)))) | (vec3<i32>(-2147483647i, ~1i, -reverseBits(arg_0.b.a.x)) >> ((vec3<u32>(countOneBits(arg_2.e.b.x), firstTrailingBit(arg_1.x), 117592u) ^ countOneBits(arg_1 | vec3<u32>(4294967295u, 29995u, arg_1.x))) % vec3<u32>(32u)));
    global0 = Struct_5(~(~firstTrailingBit(_wgslsmith_mod_u32(1u, global0.a))), global0.b, Struct_3(arg_0.a, Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, global0.c.b.a.x, -2147483647i, -35656i) << (vec4<u32>(4294967295u, arg_2.e.b.x, 4294967295u, arg_2.d.b.x) % vec4<u32>(32u)), firstLeadingBit(arg_0.b.a), abs(arg_2.d.c.a)), _wgslsmith_f_op_f32(-1609f + _wgslsmith_div_f32(arg_2.b.x, -1503f)))), _wgslsmith_mod_u32(abs(~(~19266u)), firstLeadingBit(select(abs(4294967295u), arg_1.x << (arg_1.x % 32u), true))));
    return Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.b.zy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-828f, 1000f))) * vec2<f32>(-2210f, 701f)) * _wgslsmith_f_op_vec2_f32(global0.c.a - _wgslsmith_f_op_vec2_f32(-arg_0.a)))), global0.c.b);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_5, arg_3: vec3<bool>) -> i32 {
    global3 = -(_wgslsmith_sub_vec3_i32(vec3<i32>(37413i << (0u % 32u), 1i, -global3.x), max(arg_1.b.a.yyz, vec3<i32>(0i, global3.x, 1i))) | vec3<i32>(i32(-1i) * -14158i, global3.x, _wgslsmith_mult_i32(abs(global3.x), arg_2.c.b.a.x)));
    global2 = array<Struct_2, 5>();
    var var_0 = max(firstTrailingBit(i32(-1i) * -u_input.a), max(832i << (~func_3(true, vec3<u32>(global0.a, global0.d, arg_2.d), Struct_4(arg_2.a, vec3<f32>(1749f, arg_2.c.b.b, 1000f), -1463f, Struct_2(arg_2.c.b, vec3<u32>(30335u, 1u, 57831u), global0.c.b, vec3<i32>(arg_2.c.b.a.x, global3.x, 42854i)), Struct_2(arg_1.b, vec3<u32>(1u, arg_2.a, 19438u), Struct_1(arg_1.b.a, 1473f), global1[_wgslsmith_index_u32(global4.x, 17u)]))).x % 32u), 33010i));
    var var_1 = arg_2.c.b.a.x;
    global4 = ~max(min(vec3<u32>(arg_0, global0.a, arg_0), _wgslsmith_mult_vec3_u32(vec3<u32>(71683u, 0u, arg_2.d) & vec3<u32>(arg_0, global0.d, 59520u), _wgslsmith_add_vec3_u32(vec3<u32>(25771u, 0u, global4.x), vec3<u32>(554u, 0u, 1u)))), vec3<u32>(12885u << (1u % 32u), arg_2.a, min(1u, global4.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 1u, 35942u, 21114u)) % 32u)));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = ~20506u;
    global0 = Struct_5(~(~global0.d) ^ firstTrailingBit(global0.d), vec3<bool>((~global0.d & ~4294967295u) >= ~(~22411u), true, false), Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.b.b, global0.c.b.b))))), Struct_1(vec4<i32>(_wgslsmith_div_i32(32149i, 2147483647i), 1i, var_0 << (42489u % 32u), 0i), -2052f)), global0.d);
    var var_2 = vec3<i32>(reverseBits(-func_4(0u, func_1(global0.c, vec3<u32>(183u, 1u, 6554u), Struct_4(79828u, vec3<f32>(-1406f, global0.c.a.x, global0.c.b.b), -548f, Struct_2(global0.c.b, vec3<u32>(1u, global0.d, global0.d), global0.c.b, global1[_wgslsmith_index_u32(global4.x, 17u)]), Struct_2(Struct_1(vec4<i32>(-44312i, -42190i, -69717i, global0.c.b.a.x), global0.c.a.x), vec3<u32>(global0.d, global4.x, 32342u), Struct_1(vec4<i32>(global3.x, var_0, global3.x, 2147483647i), global0.c.b.b), vec3<i32>(global3.x, 0i, var_0)))), Struct_5(80269u, vec3<bool>(true, global0.b.x, false), Struct_3(vec2<f32>(global0.c.b.b, -627f), Struct_1(u_input.b, global0.c.a.x)), 1u), vec3<bool>(global0.b.x, false, true))), abs(firstTrailingBit(0i) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a, global0.d, global4.x, global4.x), vec4<u32>(4294967295u, 1u, 76867u, global0.a) & vec4<u32>(global0.a, 4294967295u, global4.x, global0.a)) % 32u)), firstLeadingBit(_wgslsmith_mult_i32(-12486i ^ func_1(global0.c, vec3<u32>(12403u, 35018u, global0.d), Struct_4(global0.a, vec3<f32>(314f, global0.c.a.x, global0.c.b.b), global0.c.b.b, Struct_2(Struct_1(vec4<i32>(var_0, -1i, var_0, 1i), -140f), vec3<u32>(global4.x, 7833u, 137311u), Struct_1(u_input.b, global0.c.a.x), vec3<i32>(-2147483647i, 31399i, -2147483647i)), Struct_2(Struct_1(vec4<i32>(-2147483647i, -39054i, u_input.a, u_input.a), 313f), vec3<u32>(global4.x, global4.x, 15560u), Struct_1(u_input.b, global0.c.b.b), global1[_wgslsmith_index_u32(global4.x, 17u)]))).b.a.x, func_4(global0.d, Struct_3(global0.c.a, global0.c.b), Struct_5(0u, global0.b, global0.c, 22619u), global0.b))));
    var_2 = abs(~_wgslsmith_clamp_vec3_i32(~(u_input.b.zzz & u_input.b.zxx), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, var_2.x, global3.x), vec3<i32>(var_2.x, global3.x, 29880i))), ~func_1(global0.c, vec3<u32>(69659u, 1u, 1u), Struct_4(global4.x, vec3<f32>(global0.c.b.b, -900f, -385f), -1000f, Struct_2(global0.c.b, vec3<u32>(4294967295u, 0u, global0.a), Struct_1(vec4<i32>(39275i, -2147483647i, var_2.x, var_0), global0.c.b.b), u_input.b.yzw), global2[_wgslsmith_index_u32(global4.x, 5u)])).b.a.xyw));
    let var_3 = Struct_1(_wgslsmith_div_vec4_i32(u_input.b, -(~global0.c.b.a | func_1(global0.c, vec3<u32>(47642u, 21296u, global4.x), Struct_4(global0.a, vec3<f32>(global0.c.b.b, -666f, global0.c.b.b), 478f, global2[_wgslsmith_index_u32(0u, 5u)], Struct_2(Struct_1(vec4<i32>(var_0, u_input.a, u_input.a, 32745i), global0.c.a.x), vec3<u32>(1u, global0.d, 4294967295u), global0.c.b, global0.c.b.a.wzx))).b.a)), global0.c.b.b);
    let var_4 = max(global4.x, ~select(global0.a, global0.a, global0.b.x && select(true, true, global0.b.x)));
    let var_5 = select(vec2<bool>(true | any(!vec4<bool>(false, global0.b.x, true, true)), var_4 > ~1u), select(global0.b.yy, select(!select(global0.b.xy, global0.b.zz, global0.b.x), !global0.b.yz, !global0.b.x), !(!global0.b.xz)), global0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(~select(vec3<u32>(global0.a, 1u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(var_4, 4294967295u, 58312u), vec3<u32>(1u, global4.x, 9070u)), select(global0.b, vec3<bool>(global0.b.x, false, var_5.x), vec3<bool>(var_5.x, false, var_5.x))), ~_wgslsmith_add_vec3_u32(vec3<u32>(35517u, 4587u, global0.d), _wgslsmith_mod_vec3_u32(vec3<u32>(87549u, 0u, global0.a), vec3<u32>(32022u, 1u, 4294967295u)))), global4.xz, abs(_wgslsmith_dot_vec3_i32(var_3.a.yzx & var_3.a.zxz, vec3<i32>(max(-1i, -2147483647i), var_2.x, _wgslsmith_add_i32(-71523i, global0.c.b.a.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.c.b.b), _wgslsmith_f_op_f32(var_3.b - 649f), func_1(func_1(global0.c, vec3<u32>(var_4, var_4, var_4), Struct_4(var_4, vec3<f32>(1528f, 510f, 628f), -164f, global2[_wgslsmith_index_u32(global0.d, 5u)], global2[_wgslsmith_index_u32(9573u, 5u)])), _wgslsmith_div_vec3_u32(vec3<u32>(var_4, 0u, global4.x), vec3<u32>(35345u, 0u, 20408u)), Struct_4(0u, vec3<f32>(809f, global0.c.b.b, global0.c.b.b), 391f, Struct_2(var_3, vec3<u32>(var_4, 45605u, global0.d), var_3, u_input.b.zyx), Struct_2(var_3, vec3<u32>(4294967295u, var_4, 22898u), var_3, var_3.a.wyy))).a.x) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1053f, 1443f, -630f) * vec3<f32>(var_3.b, var_3.b, global0.c.a.x))))), max(~1u, 312u));
}

