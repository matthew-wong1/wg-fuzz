struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: array<i32, 10> = array<i32, 10>(i32(-2147483648), 1i, 53756i, 29120i, -63585i, 21206i, 26157i, i32(-2147483648), -11912i, -8719i);

var<private> global2: Struct_2;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(max(global2.a.d, ~vec4<u32>(global2.a.a.x, 1u, 38536u, global2.a.d.x) & abs(global2.a.d)), u_input.c, select(_wgslsmith_mult_i32(2147483647i, global1[_wgslsmith_index_u32(26544u, 10u)]) < firstTrailingBit(-1i), (u_input.a & 0u) >= ~2289u, global2.a.a.x == _wgslsmith_sub_u32(u_input.a, 1u)), global2.a.d, arg_1.x), false, !(!(!vec2<bool>(arg_1.x, arg_1.x))), global2.d);
    var var_1 = vec4<bool>(arg_1.x, true, true, global2.b);
    var var_2 = min(~(1u >> (_wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 19763u, 4294967295u), var_0.a.d.xyx)) % 32u)), ~(~select(firstTrailingBit(32177u), _wgslsmith_mult_u32(0u, global2.a.a.x), true)));
    let var_3 = var_1.xwx;
    var_2 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global2.a.d.zw, _wgslsmith_mod_vec2_u32(vec2<u32>(global2.a.d.x, u_input.a), vec2<u32>(var_0.a.d.x, 43885u)), vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(var_0.a.d.x, u_input.a) % vec2<u32>(32u))), select(var_0.a.d.xx, min(var_0.a.a.ww, var_0.a.a.zx), var_1.yy)), ~(~4294967295u ^ ~global2.a.a.x));
    return select(var_3.zx, vec2<bool>((u_input.c << (~30181u % 32u)) <= global2.a.b, 1i >= arg_0.x), global2.c);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_2(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(851f + _wgslsmith_f_op_f32(-1232f + arg_0)) - global2.d.x) > arg_0, select(select(func_3(_wgslsmith_sub_vec2_i32(u_input.b, u_input.b), vec2<bool>(true, true)), vec2<bool>(true, true), select(func_3(vec2<i32>(global0[_wgslsmith_index_u32(1u, 4u)], global2.a.b), global2.c), global2.c, true)), select(!(!vec2<bool>(global2.c.x, global2.a.c)), vec2<bool>(global2.c.x, true), !all(global2.c)), select(global2.c, !global2.c, -305f >= _wgslsmith_f_op_f32(round(358f)))), _wgslsmith_f_op_vec3_f32(-global2.d));
    var var_1 = global2.a.a;
    var var_2 = _wgslsmith_mult_vec4_i32(abs(vec4<i32>(_wgslsmith_add_i32(-var_0.a.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-3418i, -17636i, 0i), vec3<i32>(-1i, u_input.b.x, var_0.a.b))), min(-global0[_wgslsmith_index_u32(global2.a.a.x, 4u)], _wgslsmith_dot_vec4_i32(vec4<i32>(8801i, 1i, -35009i, global0[_wgslsmith_index_u32(var_0.a.a.x, 4u)]), vec4<i32>(1i, u_input.c, -1i, -1i))), var_0.a.b, 1i)), _wgslsmith_add_vec4_i32(select(vec4<i32>(-global1[_wgslsmith_index_u32(u_input.a, 10u)], 27247i, global2.a.b | 18754i, u_input.c), abs(vec4<i32>(global2.a.b, 2147483647i, global2.a.b, 22209i)), vec4<bool>(all(vec4<bool>(true, global2.a.e, false, false)), true, true, 175f < arg_0)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(global2.a.b, var_0.a.b, global1[_wgslsmith_index_u32(u_input.a, 10u)], var_0.a.b), vec4<i32>(89095i, -44552i, 4892i, 21108i)), ~vec4<i32>(global1[_wgslsmith_index_u32(global2.a.d.x, 10u)], -32057i, global0[_wgslsmith_index_u32(u_input.a, 4u)], 1i), true) | _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(0u, 10u)], u_input.c, var_0.a.b, global1[_wgslsmith_index_u32(var_1.x, 10u)])), _wgslsmith_add_vec4_i32(vec4<i32>(42389i, global0[_wgslsmith_index_u32(var_0.a.d.x, 4u)], 9171i, 20231i), vec4<i32>(-2147483647i, -37469i, -1i, global1[_wgslsmith_index_u32(var_0.a.a.x, 10u)])))));
    var var_3 = -1333i;
    var var_4 = false;
    return Struct_1(~min(max(global2.a.d, global2.a.a), global2.a.d), _wgslsmith_add_i32(0i, _wgslsmith_mult_i32(-(-2147483647i | global0[_wgslsmith_index_u32(var_0.a.a.x, 4u)]), -56831i)), _wgslsmith_f_op_f32(min(273f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(778f)))))) < var_0.d.x, vec4<u32>(_wgslsmith_mod_u32(var_1.x, ~global2.a.a.x), ~1u, min(var_0.a.a.x, 8908u), ~global2.a.d.x), 4294967295u == ~_wgslsmith_sub_u32(abs(var_1.x), var_0.a.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    global1 = array<i32, 10>();
    let var_0 = arg_0;
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    var var_1 = Struct_1(arg_0.a.a << (vec4<u32>(min(arg_0.a.d.x & var_0.a.a.x, 4294967295u ^ arg_1), arg_1, (arg_1 | u_input.a) << ((u_input.a >> (81390u % 32u)) % 32u), 75419u) % vec4<u32>(32u)), var_0.a.b, global2.b, var_0.a.a, global2.b);
    return arg_0;
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<bool>(select(false, global2.c.x, !(!(!global2.c.x))), all(!vec4<bool>(false, global2.a.e != false, any(vec4<bool>(global2.c.x, global2.c.x, global2.b, false)), select(global2.a.e, true, global2.a.e))), !(~_wgslsmith_mod_u32(u_input.a, 0u) == global2.a.a.x), global2.c.x);
    var var_1 = func_4(Struct_2(func_2(_wgslsmith_f_op_f32(step(global2.d.x, _wgslsmith_f_op_f32(ceil(global2.d.x))))), ((4294967295u ^ u_input.a) == 4294967295u) || !all(var_0.zyw), vec2<bool>(false, all(vec3<bool>(global2.b, false, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global2.d + vec3<f32>(1085f, -359f, -574f)), _wgslsmith_f_op_vec3_f32(global2.d - global2.d), vec3<bool>(true, true, false))))), 1u);
    var var_2 = !vec3<bool>(false, !var_0.x, func_4(Struct_2(Struct_1(var_1.a.d, -16823i, var_1.c.x, vec4<u32>(var_1.a.a.x, u_input.a, u_input.a, global2.a.d.x), true), false, var_1.c, global2.d), _wgslsmith_mod_u32(var_1.a.a.x, var_1.a.d.x)).a.d.x == ~18353u);
    let var_3 = func_4(Struct_2(Struct_1(global2.a.d, 21119i, var_2.x, _wgslsmith_mult_vec4_u32(abs(var_1.a.d), ~var_1.a.d), false), !any(var_0.wxy), !func_4(func_4(Struct_2(Struct_1(vec4<u32>(var_1.a.d.x, 0u, 87059u, 99610u), global1[_wgslsmith_index_u32(16944u, 10u)], false, vec4<u32>(var_1.a.a.x, 38697u, global2.a.a.x, 4294967295u), false), true, vec2<bool>(var_1.b, global2.c.x), global2.d), u_input.a), global2.a.d.x).c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1455f, var_1.d.x))), var_1.a.d.x ^ ~global2.a.d.x);
    var_1 = func_4(func_4(func_4(var_3, ~_wgslsmith_mult_u32(1475u, 8379u)), var_3.a.d.x), 18165u);
    return func_4(var_3, _wgslsmith_add_u32(4294967295u, 0u) << (var_1.a.d.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global0 = array<i32, 4>();
    global2 = func_4(Struct_2(Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 5262u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 11579u, 27723u, global2.a.d.x), global2.a.a), max(36546u, u_input.a), global2.a.d.x), global2.a.b, global2.b, firstTrailingBit(vec4<u32>(37077u, 65581u, u_input.a, u_input.a)), global2.b), false, func_4(func_1(), _wgslsmith_mult_u32(_wgslsmith_mod_u32(global2.a.a.x, 29644u), reverseBits(global2.a.d.x))).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.d)))), _wgslsmith_div_u32(1u, min(global2.a.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 35064u), _wgslsmith_mult_vec4_u32(global2.a.d, global2.a.a)))));
    var var_0 = u_input.c << (44060u % 32u);
    var_0 = _wgslsmith_sub_i32(23672i, ~(~abs(global2.a.b))) >> (max(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2.a.d.x, 1u), ~(~global2.a.d.yw)), reverseBits(~(global2.a.d.x << (global2.a.d.x % 32u)))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(global2.a.a.x, 4294967295u, 10010u, u_input.a)), func_2(global2.d.x).d), ~(~countOneBits(global2.a.a))), global0[_wgslsmith_index_u32(u_input.a, 4u)] << (u_input.a % 32u), global2.d, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global2.d.x)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.d.x, global2.d.x)) * global2.d.x)))), vec4<i32>(-1i, ~func_1().a.b, _wgslsmith_sub_i32(select(-22424i, global1[_wgslsmith_index_u32(29223u, 10u)], global2.b), firstLeadingBit(u_input.b.x)) ^ u_input.c, -51615i));
}

