struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<i32>,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 31>;

var<private> global2: Struct_2 = Struct_2(44616u, vec3<i32>(2147483647i, 9228i, -42573i), vec4<u32>(15757u, 70815u, 1u, 9852u), vec2<i32>(i32(-2147483648), -1i), vec2<u32>(27498u, 15042u));

var<private> global3: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(false, vec3<bool>(true, true, true)), Struct_4(true, vec3<bool>(true, true, true)), Struct_4(false, vec3<bool>(true, false, false)), Struct_4(true, vec3<bool>(false, false, true)), Struct_4(false, vec3<bool>(true, false, false)), Struct_4(false, vec3<bool>(true, false, false)), Struct_4(true, vec3<bool>(false, true, false)), Struct_4(true, vec3<bool>(true, false, true)), Struct_4(false, vec3<bool>(true, false, false)), Struct_4(false, vec3<bool>(false, false, false)), Struct_4(false, vec3<bool>(false, false, true)), Struct_4(true, vec3<bool>(false, true, false)), Struct_4(true, vec3<bool>(true, true, true)), Struct_4(false, vec3<bool>(true, false, false)), Struct_4(true, vec3<bool>(false, false, false)), Struct_4(true, vec3<bool>(true, false, false)), Struct_4(false, vec3<bool>(true, true, true)), Struct_4(false, vec3<bool>(false, true, true)), Struct_4(false, vec3<bool>(true, false, true)), Struct_4(true, vec3<bool>(true, false, true)), Struct_4(false, vec3<bool>(true, false, false)), Struct_4(false, vec3<bool>(true, true, true)), Struct_4(true, vec3<bool>(false, true, false)), Struct_4(true, vec3<bool>(true, true, false)), Struct_4(false, vec3<bool>(false, false, false)), Struct_4(true, vec3<bool>(true, false, false)));

var<private> global4: vec4<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec2<bool>) -> f32 {
    global1 = array<f32, 31>();
    var var_0 = select(select(!vec3<bool>(true, !arg_3.x, false), vec3<bool>(false, -1914f <= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 31u)]), !(arg_3.x && true)), arg_3.x || any(!vec4<bool>(true, arg_3.x, arg_3.x, false))), vec3<bool>(true, false, true), any(!select(vec3<bool>(arg_3.x, arg_3.x, arg_3.x), vec3<bool>(arg_3.x, arg_3.x, arg_3.x), !vec3<bool>(arg_3.x, false, true))));
    var var_1 = arg_2.b;
    let var_2 = !arg_3.x;
    global2 = arg_2.b;
    return arg_0.x;
}

fn func_2() -> Struct_2 {
    global2 = Struct_2(~abs(firstLeadingBit(global2.e.x)) >> (global2.a % 32u), ~firstTrailingBit(vec3<i32>(-global4.x, 33271i, ~(-4371i))), global2.c, min(-vec2<i32>(2147483647i, ~global2.b.x), u_input.c), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~global2.e, vec2<u32>(4294967295u, u_input.a)), _wgslsmith_add_vec2_u32(u_input.b, abs(u_input.b)))));
    let var_0 = 30171u;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(388f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(global1[_wgslsmith_index_u32(global2.e.x, 31u)], global1[_wgslsmith_index_u32(112346u, 31u)]), u_input.c, Struct_3(global2.b.x, Struct_2(u_input.a, vec3<i32>(global4.x, global2.b.x, global2.b.x), global2.c, u_input.c, vec2<u32>(var_0, var_0)), vec2<i32>(u_input.c.x, global2.b.x), -2147483647i), vec2<bool>(false, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -659f))), any(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, false)), vec2<bool>(false, true), vec2<bool>(true, any(vec3<bool>(false, true, false)))))));
    let var_2 = ~global2.c.yzz;
    var var_3 = countOneBits(~((4294967295u << (var_2.x % 32u)) & ~4294967295u) & var_0);
    return Struct_2(~_wgslsmith_mult_u32(~(~var_2.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(7509u, var_0, var_0, global2.a), global2.c)), global2.b, global2.c, (vec2<i32>(min(-1i, global4.x), -1509i) << (vec2<u32>(~1u, select(69993u, 51456u, false)) % vec2<u32>(32u))) ^ vec2<i32>(firstTrailingBit(firstTrailingBit(-40211i)), min(select(global2.b.x, global2.d.x, false), _wgslsmith_mult_i32(2147483647i, global2.b.x))), ~_wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(global2.e, var_2.zx), u_input.b));
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = func_2();
    var_0 = func_2();
    let var_1 = Struct_3(u_input.c.x, Struct_2(_wgslsmith_add_u32(1u, func_2().a), ~countOneBits(-var_0.b), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.e.x, 34295u, 66144u, 93555u), global2.c)), min(~(global4.zw << (vec2<u32>(108876u, global2.a) % vec2<u32>(32u))), global4.xw), _wgslsmith_clamp_vec2_u32(max(~u_input.b, func_2().c.zx), ~vec2<u32>(global2.e.x, global2.e.x), vec2<u32>(var_0.a >> (u_input.d % 32u), _wgslsmith_mod_u32(arg_0.x, global2.e.x)))), var_0.b.yx, i32(-1i) * -17172i);
    let var_2 = Struct_2(4294967295u, select(-(~(-global2.b)), global4.zww, vec3<bool>(true, true, true)), ~arg_0, global4.yy, ~global2.c.yy);
    global2 = Struct_2(var_2.e.x, var_2.b, vec4<u32>(45702u, max(func_2().e.x, _wgslsmith_sub_u32(max(58903u, 4294967295u), ~20016u)), ~var_2.c.x, firstTrailingBit(~(var_1.b.e.x << (24742u % 32u)))), _wgslsmith_sub_vec2_i32(abs(u_input.c), var_1.b.b.xz), vec2<u32>(0u, 1u) ^ _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 29817u), vec2<u32>(4294967295u, 0u)), arg_0.yx));
    return var_1;
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> f32 {
    global1 = array<f32, 31>();
    let var_0 = Struct_3(u_input.c.x, arg_1.b, vec2<i32>(global2.b.x, -(min(11576i, 46283i) << (select(4294967295u, 83058u, false) % 32u))), 1i);
    global0 = -21600i;
    var var_1 = Struct_1(~(-vec3<i32>(_wgslsmith_add_i32(var_0.b.b.x, -16728i), global2.d.x, 51350i)));
    global2 = func_1(vec4<u32>(arg_1.b.e.x, global2.e.x, u_input.b.x, ~(~1u))).b;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.c.x >> (~4294967295u % 32u), 41661i, u_input.c.x, min(global4.x, -30963i));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(4294967295u, 31u)])), func_1(vec4<u32>(global2.e.x, 1u, u_input.d, 4294967295u)))), -1605f, any(vec4<bool>(true, true, true, true)))) * -665f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(584f)))));
    var var_2 = Struct_3(_wgslsmith_mod_i32(global2.d.x, -_wgslsmith_mod_i32(var_0.x, -2147483647i) << (u_input.b.x % 32u)), func_1(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(30109u, global2.c.x, 33671u), global2.c.wwy) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(0u, global2.e.x, u_input.a)) % 32u), global2.a, 39897u, countOneBits(abs(47579u)))).b, max(var_0.yw, min(-abs(global4.wy), func_2().d)), _wgslsmith_mult_i32(u_input.c.x, 14867i));
    let var_3 = ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(39426u, select(u_input.a, 47794u, false)), global2.e), u_input.b);
    let var_4 = var_2.b.c.wxx;
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec2<i32>(var_0.x, var_0.x)) & global4.zw, ~(-global4.xyx), -1i, _wgslsmith_div_vec4_u32(min(select(vec4<u32>(var_4.x, 3019u, 65473u, 0u), firstTrailingBit(global2.c), vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec4_u32(global2.c, vec4<u32>(594u, 1u, var_3.x, var_2.b.c.x))), var_2.b.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-688f, global1[_wgslsmith_index_u32(51837u, 31u)])))))));
}

