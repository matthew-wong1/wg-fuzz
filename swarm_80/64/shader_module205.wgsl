struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(2147483647i, vec2<u32>(1u, 1u), 1u, 2147483647i), vec4<i32>(31001i, -65981i, 50408i, 18912i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, -14107i));

var<private> global1: array<i32, 10> = array<i32, 10>(-24692i, 6804i, 8980i, -1i, 25232i, 2147483647i, -57648i, -1i, 55443i, 16562i);

var<private> global2: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(83864u, 1u, 43297u), vec3<u32>(79812u, 15041u, 102086u), vec3<u32>(18677u, 4294967295u, 18498u), vec3<u32>(1u, 0u, 9544u), vec3<u32>(3788u, 0u, 0u), vec3<u32>(0u, 1u, 0u), vec3<u32>(31019u, 34133u, 7811u), vec3<u32>(4294967295u, 27430u, 1797u), vec3<u32>(4294967295u, 26109u, 0u), vec3<u32>(1u, 3289u, 0u), vec3<u32>(47601u, 4294967295u, 10799u), vec3<u32>(25319u, 14264u, 0u), vec3<u32>(4294967295u, 9084u, 26599u), vec3<u32>(7590u, 1u, 24611u), vec3<u32>(0u, 0u, 4294967295u));

var<private> global3: Struct_4 = Struct_4(Struct_1(1i, vec2<u32>(80229u, 16583u), 9172u, -38428i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -9278i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(1i, -1i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = Struct_3(vec2<bool>(true, !all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)))), ~(-vec4<i32>(global3.a.a, 1i, global3.b.x, ~1i)), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-843f, -523f, _wgslsmith_f_op_f32(round(1949f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -840f, 565f)))), u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.c.x, global3.a.d & global1[_wgslsmith_index_u32(9003u, 10u)], u_input.a.x, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(1u, 10u)], 55239i)), vec4<i32>(-u_input.c, 1i, _wgslsmith_mult_i32(arg_0.a, 0i), arg_0.a)), _wgslsmith_f_op_f32(-165f - 140f) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(867f * -698f), 1017f, true))), all(vec3<bool>(false, true, all(vec3<bool>(false, false, false)))));
    global2 = array<vec3<u32>, 15>();
    global0 = Struct_4(global3.a, ~(-var_0.b), reverseBits(countOneBits(global3.d)), ~var_0.b.xy);
    var var_1 = Struct_4(Struct_1(5856i, min(vec2<u32>(global0.a.c ^ 10792u, ~u_input.d), (global0.a.b >> (arg_0.b % vec2<u32>(32u))) << (max(vec2<u32>(u_input.d, u_input.d), global3.a.b) % vec2<u32>(32u))), ~33039u, _wgslsmith_mod_i32(-global0.b.x, global1[_wgslsmith_index_u32(~(global3.a.b.x ^ var_0.c.b), 10u)])), (countOneBits(firstTrailingBit(vec4<i32>(global0.c.x, global1[_wgslsmith_index_u32(var_0.c.b, 10u)], -38139i, u_input.b))) ^ countOneBits(max(vec4<i32>(global0.d.x, global1[_wgslsmith_index_u32(85599u, 10u)], u_input.e.x, 36729i), var_0.b))) & vec4<i32>((7578i ^ u_input.e.x) & reverseBits(arg_0.a), -15518i, global0.d.x, global0.d.x), abs(global3.c) >> (vec2<u32>(arg_0.c | 33873u, u_input.d << (abs(38435u) % 32u)) % vec2<u32>(32u)), var_0.b.zy);
    global2 = array<vec3<u32>, 15>();
    return ~_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.d, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-3850i, var_0.c.c, global1[_wgslsmith_index_u32(51987u, 10u)]), var_0.b.xxx)), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(var_0.c.b, 10u)], 20782i, -2147483647i), -vec3<i32>(var_0.c.c, 24967i, u_input.a.x)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b, 2147483647i), 7334i)), vec4<i32>(_wgslsmith_sub_i32(countOneBits(var_1.d.x), global1[_wgslsmith_index_u32(min(var_0.c.b, 0u), 10u)]), -global3.c.x, i32(-1i) * -u_input.c, u_input.b));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = -((func_3(arg_1) << (vec4<u32>(abs(global3.a.b.x), 1u, ~global3.a.c, global0.a.b.x) % vec4<u32>(32u))) & global0.b);
    global1 = array<i32, 10>();
    var var_1 = Struct_2(vec3<f32>(1955f, _wgslsmith_f_op_f32(exp2(arg_0)), 608f), u_input.d, -abs(-global3.b.x), any(vec2<bool>(true, true)));
    global0 = Struct_4(Struct_1(~var_0.x, _wgslsmith_mult_vec2_u32(vec2<u32>(~global0.a.c, u_input.d), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.a.b.x, 4294967295u), vec2<u32>(var_1.b, 1u))), 52619u, 89884i), _wgslsmith_clamp_vec4_i32(select(u_input.a ^ vec4<i32>(1088i, 48260i, -1i, global1[_wgslsmith_index_u32(25387u, 10u)]), vec4<i32>(global0.b.x, global1[_wgslsmith_index_u32(4294967295u, 10u)], -5i, 0i), any(vec4<bool>(var_1.d, var_1.d, var_1.d, false))) & _wgslsmith_mod_vec4_i32(var_0, reverseBits(vec4<i32>(-32061i, var_0.x, u_input.c, -11109i))), global0.b, ~(-vec4<i32>(var_0.x, arg_1.d, global3.c.x, -8945i))), vec2<i32>(-2147483647i, global0.d.x), vec2<i32>(16528i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(firstTrailingBit(arg_1.d), -34545i), i32(-1i) * -global1[_wgslsmith_index_u32(global3.a.c, 10u)])));
    let var_2 = -vec3<i32>(-73869i, 1i, u_input.e.x);
    return select(select(!(!select(vec4<bool>(var_1.d, var_1.d, false, false), vec4<bool>(var_1.d, true, true, true), false)), select(!select(vec4<bool>(false, var_1.d, false, var_1.d), vec4<bool>(var_1.d, true, false, true), vec4<bool>(true, true, var_1.d, true)), select(!vec4<bool>(false, false, var_1.d, true), select(vec4<bool>(false, false, false, var_1.d), vec4<bool>(var_1.d, true, false, var_1.d), var_1.d), select(true, false, false)), vec4<bool>(!var_1.d, any(vec4<bool>(true, var_1.d, var_1.d, var_1.d)), true && var_1.d, -370f == arg_0)), !select(select(vec4<bool>(false, var_1.d, var_1.d, false), vec4<bool>(false, var_1.d, true, var_1.d), vec4<bool>(false, var_1.d, true, var_1.d)), vec4<bool>(var_1.d, false, var_1.d, var_1.d), vec4<bool>(var_1.d, false, var_1.d, true))), !select(select(vec4<bool>(true, var_1.d, false, true), !vec4<bool>(var_1.d, false, true, var_1.d), true), !vec4<bool>(var_1.d, var_1.d, false, true), true && (var_1.d == var_1.d)), !vec4<bool>(false, var_1.d, var_1.d, !select(true, true, var_1.d)));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = !select(!func_2(_wgslsmith_f_op_f32(f32(-1f) * -170f), global0.a), !select(func_2(1232f, global0.a), !vec4<bool>(true, arg_0.d, false, arg_3.c.d), arg_3.d), vec4<bool>(true, true, true, true));
    global1 = array<i32, 10>();
    global0 = Struct_4(global0.a, firstTrailingBit(vec4<i32>(min(global3.d.x, -arg_3.b.x), 4691i, _wgslsmith_add_i32(global3.a.a, _wgslsmith_sub_i32(-7536i, -4278i)), _wgslsmith_sub_i32(1i, 2147483647i))), vec2<i32>(-1i, global0.d.x), _wgslsmith_div_vec2_i32(-(min(global3.d, global0.d) ^ vec2<i32>(global3.d.x, 55226i)), reverseBits(abs(arg_3.b.zz)) >> (~min(vec2<u32>(u_input.d, 0u), vec2<u32>(arg_3.c.b, u_input.d)) % vec2<u32>(32u))));
    let var_1 = global3.b.zwz;
    global1 = array<i32, 10>();
    return Struct_3(select(vec2<bool>(var_0.x, var_0.x && arg_3.d), vec2<bool>(true, true), vec2<bool>(false, true)), min(~vec4<i32>(2147483647i, firstTrailingBit(var_1.x), max(2147483647i, -1i), 1i), u_input.a), Struct_2(_wgslsmith_f_op_vec3_f32(step(arg_0.a, arg_3.c.a)), _wgslsmith_mult_u32(global3.a.b.x, select(u_input.d, 1u, select(false, true, arg_0.d))), -3395i, all(var_0)), arg_0.d);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_3) -> vec3<bool> {
    global2 = array<vec3<u32>, 15>();
    return !vec3<bool>(!arg_0, arg_0 != arg_2.a.x, arg_2.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(all(select(vec3<bool>(true, true, true), func_4(true, select(global3.a.c, 23673u, true), func_1(Struct_2(vec3<f32>(-905f, 645f, -628f), 5825u, global3.a.a, true), -4042i, vec3<u32>(36261u, u_input.d, u_input.d), Struct_3(vec2<bool>(false, true), u_input.a, Struct_2(vec3<f32>(288f, 1420f, 768f), 0u, -2147483647i, true), false))), true)), false, true && func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(-1i, global3.a.b, select(1u, u_input.d, true), global3.b.x)).x);
    let var_1 = global0.a.b;
    let var_2 = ~_wgslsmith_clamp_u32(reverseBits(_wgslsmith_add_u32(_wgslsmith_mod_u32(global0.a.b.x, 0u), 86710u)), ~19112u, 0u);
    global0 = Struct_4(global0.a, u_input.a & (vec4<i32>(-1i) * -vec4<i32>(10300i, u_input.e.x, 35440i, -2147483647i)), -global0.d, global0.c);
    var var_3 = -15880i << (((u_input.d ^ 38811u) << (~var_2 % 32u)) % 32u);
    var var_4 = Struct_1(1i, vec2<u32>(21199u, _wgslsmith_sub_u32(43624u >> (var_1.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3.a.b.x, 20701u, var_1.x), vec4<u32>(4294967295u, 0u, u_input.d, 4294967295u))) & global3.a.c), firstTrailingBit(~(_wgslsmith_mult_u32(1u, 6822u) << (global0.a.b.x % 32u))), func_3(global0.a).x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_u32(~3601u, global0.a.b.x | 0u, 34439u ^ var_1.x)));
}

