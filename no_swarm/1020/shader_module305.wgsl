struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: vec2<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<i32, 25> = array<i32, 25>(-23806i, -7029i, 23204i, 8309i, 31283i, 11971i, 4275i, 52957i, 2147483647i, 28827i, i32(-2147483648), 35924i, 0i, 0i, -1i, i32(-2147483648), -1i, -386i, i32(-2147483648), 2147483647i, 43217i, -59584i, 22860i, 0i, 0i);

var<private> global2: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(-1i, -10973i), vec2<i32>(1i, 6448i), vec2<i32>(-50665i, -1i), vec2<i32>(i32(-2147483648), -26584i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(19361i, -23374i), vec2<i32>(1i, -1i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, -1i), vec2<i32>(-2543i, 0i), vec2<i32>(41238i, 61197i), vec2<i32>(2147483647i, i32(-2147483648)));

var<private> global3: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -1i), vec4<i32>(-51171i, i32(-2147483648), -40090i, -48465i), vec4<i32>(-56909i, -1i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), -1i, -1i, 1i), vec4<i32>(1i, 39660i, 1i, i32(-2147483648)), vec4<i32>(221i, 2147483647i, 383i, 52282i), vec4<i32>(2147483647i, 12375i, -6222i, 32720i), vec4<i32>(0i, -35281i, i32(-2147483648), 11333i), vec4<i32>(0i, 21962i, 17803i, 26681i), vec4<i32>(-1i, 1i, -62171i, 0i), vec4<i32>(-41716i, 9120i, -18290i, 25823i), vec4<i32>(47147i, -43359i, 2147483647i, 11667i), vec4<i32>(i32(-2147483648), -4063i, -30140i, 1i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 0i), vec4<i32>(21739i, -6160i, -7432i, i32(-2147483648)), vec4<i32>(1i, 2147483647i, 40391i, -1i), vec4<i32>(1i, i32(-2147483648), -19938i, 20247i), vec4<i32>(0i, 30949i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, 1i, 2147483647i, -51527i), vec4<i32>(136i, -1i, 1255i, 50860i), vec4<i32>(-1i, 19854i, 11841i, 31414i), vec4<i32>(-8476i, 1i, 30933i, 11602i), vec4<i32>(-3624i, 0i, 49989i, 51095i), vec4<i32>(9266i, 0i, -26750i, 1i), vec4<i32>(7418i, -32820i, 7162i, 1i), vec4<i32>(i32(-2147483648), 1i, 0i, -68696i), vec4<i32>(0i, 0i, -1i, 7720i), vec4<i32>(i32(-2147483648), -15324i, 20744i, -1i), vec4<i32>(-4483i, -1i, 1i, i32(-2147483648)), vec4<i32>(-1i, -95742i, i32(-2147483648), 10963i));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> vec2<f32> {
    global0 = array<Struct_1, 32>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(755f, -2098f))), -958f);
    var var_1 = Struct_1(true, ~select(countOneBits(19806u), ~19568u, any(vec3<bool>(false, false, true))) << (1u % 32u));
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.b, var_1.b), 30u)];
    let var_3 = ~vec2<u32>(1u, 74732u);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(926f, var_0.a.x) + var_0.a) * vec2<f32>(-798f, var_0.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.a, vec2<f32>(-413f, var_0.a.x), vec2<bool>(true, var_1.a)))))));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(60824u, _wgslsmith_div_u32(arg_0.e.x >> (arg_0.e.x % 32u), arg_0.e.x | arg_0.e.x), 1u << (arg_0.e.x % 32u), arg_0.e.x << (arg_0.e.x % 32u)), vec4<u32>(~arg_0.e.x, arg_0.e.x, _wgslsmith_div_u32(arg_0.e.x ^ 20685u, ~63176u), ~arg_0.e.x), abs(vec4<u32>(arg_0.e.x, 0u, arg_0.e.x, 0u)) | ~(~vec4<u32>(arg_0.e.x, arg_0.e.x, 8537u, arg_0.e.x))) ^ (~_wgslsmith_add_vec4_u32(vec4<u32>(70497u, arg_0.e.x, 43211u, 1u) >> (vec4<u32>(arg_0.e.x, arg_0.e.x, 0u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.e.x, arg_0.e.x, arg_0.e.x, 4294967295u), vec4<u32>(arg_0.e.x, arg_0.e.x, arg_0.e.x, arg_0.e.x))) >> ((vec4<u32>(~arg_0.e.x, ~53180u, arg_0.e.x >> (arg_0.e.x % 32u), _wgslsmith_mult_u32(arg_0.e.x, 1550u)) & ((vec4<u32>(arg_0.e.x, 32464u, arg_0.e.x, 72990u) | vec4<u32>(1u, 18747u, arg_0.e.x, 50308u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.e.x, arg_0.e.x, 55140u, 82223u), vec4<u32>(43812u, 0u, arg_0.e.x, 21296u), vec4<u32>(1u, arg_0.e.x, 4294967295u, arg_0.e.x)))) % vec4<u32>(32u)));
    global1 = array<i32, 25>();
    let var_1 = var_0;
    let var_2 = global3[_wgslsmith_index_u32(0u, 30u)] | reverseBits(arg_0.b);
    let var_3 = arg_1;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x), -1597f, arg_0.c.x) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.c.x, arg_0.c.x, -1051f), vec3<f32>(arg_0.c.x, arg_0.c.x, 484f))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, 195f, -1061f), vec3<f32>(var_0.x, var_0.x, var_0.x))), vec3<f32>(var_0.x, var_0.x, var_0.x), true)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, -1463f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1184f, 1637f, var_0.x), vec3<f32>(-1813f, 220f, 157f))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(false, vec4<i32>(u_input.a.x, 1i, -1i, 2147483647i), vec2<f32>(-1295f, 2097f), true, vec3<u32>(0u, 15051u, 0u)), 1i)) + vec3<f32>(-688f, -1472f, _wgslsmith_f_op_f32(f32(-1f) * -110f)))));
    var var_2 = abs(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(14314u, 66321u, 1u), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 23873u, 49410u), vec3<u32>(1u, 1u, 1u))), _wgslsmith_sub_u32(~_wgslsmith_div_u32(0u, 4294967295u), ~_wgslsmith_mult_u32(53687u, 41498u)), ~(~_wgslsmith_sub_u32(4294967295u, 9585u))));
    var var_3 = any(select(vec2<bool>(any(vec2<bool>(true, true)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true))), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true))), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var_3 = any(vec2<bool>(~(~var_2.x) >= _wgslsmith_div_u32(1u & var_2.x, firstTrailingBit(var_2.x)), _wgslsmith_mult_i32(0i ^ u_input.a.x, 1i) != -select(1i, u_input.b, true)));
    return Struct_1(all(!vec3<bool>(any(vec4<bool>(false, false, true, true)), all(vec4<bool>(false, false, true, true)), true)), 4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_div_vec3_u32(~min(countOneBits(vec3<u32>(arg_0.b, 0u, arg_0.b)) & ~vec3<u32>(arg_0.b, arg_0.b, 36210u), firstLeadingBit(vec3<u32>(arg_0.b, 1u, arg_0.b) & vec3<u32>(0u, 0u, arg_0.b))), vec3<u32>(abs(arg_0.b), 0u, 63347u));
    var var_1 = var_0;
    var var_2 = Struct_4(Struct_1(all(!select(arg_1.zz, vec2<bool>(true, arg_0.a), arg_0.a)), var_1.x), false);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-726f)))));
    global0 = array<Struct_1, 32>();
    return 13542i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(select(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(13770u, 1u, 4294967295u, 35155u), vec4<u32>(0u, 1u, 14827u, 1u)), ~countOneBits(14629u)), ~1u, all(vec4<bool>(true, true, true, true))), 70712u, 57437u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(22488u, select(select(0u, 3835u, false), select(1u, 22144u, false), false)), ~13997u));
    global2 = array<vec2<i32>, 14>();
    var var_1 = vec3<i32>(~_wgslsmith_sub_i32(reverseBits(global1[_wgslsmith_index_u32(18398u, 25u)]), 0i), -(~(70726i >> (0u % 32u))), -30618i) & vec3<i32>(-6957i, ~_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.b, u_input.a.x)), min(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(var_0.x, 25u)], u_input.a.x), -global1[_wgslsmith_index_u32(var_0.x, 25u)], 0i), 0i));
    let var_2 = Struct_2(vec2<f32>(475f, 985f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(891f + _wgslsmith_f_op_f32(sign(-1063f))), 1000f))));
    var_1 = ~abs(~(~(vec3<i32>(3059i, -2147483647i, -2147483647i) | vec3<i32>(var_1.x, u_input.a.x, var_1.x))));
    var var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(-(~(-1i)), firstLeadingBit(func_4(func_1(), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))), max(global1[_wgslsmith_index_u32(var_0.x, 25u)] & _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 2147483647i, 1i), vec4<i32>(0i, 30181i, -47775i, 54779i)), -14750i)), ~vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(0i, var_1.x, -2147483647i)) & ~u_input.a.x, firstLeadingBit(-2147483647i)));
    var_3 = reverseBits(max(vec3<i32>(abs(min(-21850i, -1i)), -2147483647i, -_wgslsmith_mult_i32(u_input.b, -1i)), ~_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-1i, var_1.x, 0i)), -vec3<i32>(-13003i, var_3.x, -29171i))));
    var var_4 = Struct_4(func_1(), true);
    let var_5 = vec2<u32>(var_4.a.b, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(var_1.x, -2147483647i)), u_input.a), -_wgslsmith_mod_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(var_3.x, 2147483647i), global2[_wgslsmith_index_u32(1u, 14u)]))));
}

