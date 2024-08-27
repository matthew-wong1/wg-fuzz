struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32;

var<private> global2: array<vec3<u32>, 17>;

var<private> global3: array<f32, 7> = array<f32, 7>(795f, 711f, -1000f, -1159f, -248f, 853f, -943f);

var<private> global4: Struct_1;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = global4.b.yx;
    return global3[_wgslsmith_index_u32(66101u, 7u)];
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 7u)];
    var var_1 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(reverseBits(4294967295u), 7u)] * _wgslsmith_div_f32(global3[_wgslsmith_index_u32(23107u, 7u)], global3[_wgslsmith_index_u32(1u, 7u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2737f * global3[_wgslsmith_index_u32(global4.a, 7u)]), _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(1u, 7u)], 552f, global4.b.x)))))), 328f);
    global0 = -660f;
    let var_2 = _wgslsmith_dot_vec3_u32(~select(vec3<u32>(27641u, ~u_input.a.x, 1u), countOneBits(vec3<u32>(global4.a, u_input.a.x, global4.a)), select(all(global4.b.yzx), true, true)), vec3<u32>(~_wgslsmith_add_u32(1u, u_input.a.x), ~(abs(u_input.a.x) | 4294967295u), ~(~select(1u, 23822u, arg_0))));
    let var_3 = Struct_1(~_wgslsmith_div_u32(global4.a, abs(4724u)), !global4.b);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.c.x ^ 0i, 1i, _wgslsmith_add_i32(u_input.c.x, 17849i) | 10252i, _wgslsmith_mult_i32(u_input.b, -22469i ^ u_input.b)), vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, u_input.c.x), vec2<i32>(30091i, u_input.c.x)), 1i, _wgslsmith_div_i32(countOneBits(u_input.b), -32927i), select(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), select(-8980i, 31528i, false), true))) << (1u % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = var_0.b.x;
    var var_2 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(~_wgslsmith_mod_i32(1i, -76106i), countOneBits(-1i)), u_input.c.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, 1i), func_3(true)), -2147483647i);
    var var_3 = -u_input.c;
    var var_4 = Struct_1(9349u, global4.b);
    return Struct_1(_wgslsmith_sub_u32(abs(~firstTrailingBit(1u)), ~_wgslsmith_sub_u32(arg_2.x, reverseBits(4294967295u))), !select(select(!var_4.b, !var_0.b, !vec4<bool>(true, true, true, var_4.b.x)), !select(vec4<bool>(true, arg_0.b.x, arg_0.b.x, false), var_0.b, arg_0.b.x), var_0.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global2 = array<vec3<u32>, 17>();
    global2 = array<vec3<u32>, 17>();
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(global4.a, arg_0.a), arg_0.a), 95102u, _wgslsmith_dot_vec2_u32(~u_input.a.yy, vec2<u32>(15453u, arg_2.a))), ~((vec4<u32>(21828u, 1u, 21054u, 54189u) ^ vec4<u32>(4294967295u, 0u, global4.a, arg_0.a)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(15537u, arg_2.a, 4294967295u, 84684u), vec4<u32>(0u, arg_2.a, arg_2.a, u_input.a.x)) % vec4<u32>(32u)))) ^ _wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(23456u, arg_2.a, arg_3.a, 29520u) >> (vec4<u32>(u_input.a.x, 23003u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(32074u, 4294967295u, u_input.a.x, arg_2.a), vec4<u32>(4294967295u, 45719u, 4294967295u, arg_3.a)));
    let var_1 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(max(arg_2.a, firstTrailingBit(~0u)), 7u)]);
    let var_2 = Struct_1(arg_2.a, arg_2.b);
    return arg_3;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> vec4<i32> {
    global4 = Struct_1(global4.a, select(!vec4<bool>(true, select(false, true, global4.b.x), true, true), vec4<bool>(arg_2.x <= arg_2.x, arg_1.b.x, func_2(func_2(Struct_1(1u, arg_1.b), vec2<f32>(arg_2.x, 913f), global2[_wgslsmith_index_u32(arg_1.a, 17u)]), arg_2, u_input.a).b.x, true), select(any(!arg_1.b.zyz), true, !arg_1.b.x | false)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global4.a, 7u)] * 960f))))));
    let var_0 = vec4<u32>(global4.a, ~_wgslsmith_sub_u32(reverseBits(_wgslsmith_add_u32(0u, 4294967295u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(3111u, arg_0.x), _wgslsmith_div_vec2_u32(u_input.a.zy, arg_0))), abs(_wgslsmith_mod_u32(global4.a, ~arg_0.x) << (firstLeadingBit(arg_0.x) % 32u)), 1u);
    let var_1 = u_input.c;
    global4 = func_2(func_2(arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2 + arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, -327f)), arg_3 < -1i))), (vec3<u32>(0u, global4.a, 1u) >> (~vec3<u32>(global4.a, arg_0.x, var_0.x) % vec3<u32>(32u))) & ~var_0.yxz), _wgslsmith_f_op_vec2_f32(-arg_2), min(~_wgslsmith_clamp_vec3_u32(select(vec3<u32>(27432u, var_0.x, arg_0.x), vec3<u32>(u_input.a.x, 4294967295u, arg_0.x), global4.b.xxx), vec3<u32>(4294967295u, 58037u, 41992u), ~vec3<u32>(global4.a, var_0.x, arg_0.x)), ~((vec3<u32>(79942u, 16110u, arg_1.a) & u_input.a) | ~global2[_wgslsmith_index_u32(arg_0.x, 17u)])));
    return select(max(~vec4<i32>(-arg_3, i32(-1i) * -1i, _wgslsmith_mult_i32(arg_3, arg_3), _wgslsmith_mod_i32(27155i, u_input.b)), vec4<i32>(2147483647i, 0i, var_1.x, _wgslsmith_mod_i32(14415i, 32074i)) << (var_0 % vec4<u32>(32u))), vec4<i32>(1i, _wgslsmith_add_i32(abs(arg_3), -30449i), -1i, reverseBits(1i)) >> (var_0 % vec4<u32>(32u)), any(!vec2<bool>(2300u >= arg_1.a, all(global4.b.ww))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -693f);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-530f)) * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_1(u_input.a.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_mod_u32(global4.a, 31992u))))));
    let var_0 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, 1i, 10263i, u_input.c.x) << (vec4<u32>(~4148u, u_input.a.x, 1u << (global4.a % 32u), 101791u) % vec4<u32>(32u)), func_5(u_input.a.yy, func_4(Struct_1(1u, global4.b), vec4<i32>(-3844i, 30096i, 2147483647i, u_input.c.x), func_2(Struct_1(1u, global4.b), vec2<f32>(211f, global3[_wgslsmith_index_u32(4294967295u, 7u)]), u_input.a), func_2(Struct_1(0u, global4.b), vec2<f32>(1335f, global3[_wgslsmith_index_u32(32326u, 7u)]), vec3<u32>(11784u, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-608f, global3[_wgslsmith_index_u32(1u, 7u)])), 45482i), _wgslsmith_sub_vec4_i32(max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, u_input.c.x), vec4<i32>(-45613i, u_input.b, u_input.b, u_input.c.x)), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b) | vec4<i32>(1i, -1i, -23412i, 1i)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.c.zy), -53412i, u_input.b, i32(-1i) * -12979i))) | -vec4<i32>(u_input.b, _wgslsmith_clamp_i32(2147483647i, u_input.b, u_input.b) | 0i, -_wgslsmith_div_i32(-62557i, u_input.c.x), abs(_wgslsmith_sub_i32(u_input.b, -14431i)));
    global3 = array<f32, 7>();
    global3 = array<f32, 7>();
    var var_1 = Struct_1(1u, func_4(func_2(func_4(func_4(Struct_1(24063u, vec4<bool>(false, global4.b.x, global4.b.x, global4.b.x)), vec4<i32>(-27424i, -6029i, 1i, u_input.b), Struct_1(2825u, vec4<bool>(global4.b.x, true, true, true)), Struct_1(14469u, vec4<bool>(global4.b.x, true, false, true))), vec4<i32>(-35580i, var_0.x, 0i, u_input.b), Struct_1(18420u, vec4<bool>(global4.b.x, global4.b.x, global4.b.x, global4.b.x)), Struct_1(u_input.a.x, vec4<bool>(global4.b.x, global4.b.x, false, global4.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(global4.a, 7u)], 624f) * vec2<f32>(global3[_wgslsmith_index_u32(32292u, 7u)], -725f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 7u)], 1038f) * vec2<f32>(-2402f, global3[_wgslsmith_index_u32(global4.a, 7u)]))), vec3<u32>(~global4.a, ~4294967295u, ~u_input.a.x)), vec4<i32>(_wgslsmith_div_i32(4088i, var_0.x) | var_0.x, var_0.x, u_input.b, _wgslsmith_div_i32(1i, var_0.x)), Struct_1(4294967295u, global4.b), func_2(Struct_1(firstTrailingBit(34973u), !vec4<bool>(global4.b.x, false, global4.b.x, true)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3[_wgslsmith_index_u32(0u, 7u)], 1063f))), min(_wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], vec3<u32>(63786u, u_input.a.x, u_input.a.x)), vec3<u32>(4294967295u, global4.a, u_input.a.x) << (vec3<u32>(2512u, 4294967295u, 0u) % vec3<u32>(32u))))).b);
    let var_2 = func_2(Struct_1(25202u, !vec4<bool>(all(vec2<bool>(var_1.b.x, true)), false, var_1.b.x, true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(135f - global3[_wgslsmith_index_u32(4294967295u, 7u)]), -870f)))), ~_wgslsmith_mult_vec3_u32(~(u_input.a ^ global2[_wgslsmith_index_u32(global4.a, 17u)]), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(830u, u_input.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~var_1.a >> (firstLeadingBit(var_2.a) % 32u), 7u)]))), ~(~vec4<u32>(func_4(var_2, vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.c.x), Struct_1(27348u, vec4<bool>(false, true, false, var_2.b.x)), var_2).a, global4.a, ~4294967295u, var_2.a)));
}

