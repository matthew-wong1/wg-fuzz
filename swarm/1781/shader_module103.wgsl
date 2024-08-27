struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9>;

var<private> global1: i32 = -30580i;

var<private> global2: array<bool, 17> = array<bool, 17>(false, true, true, false, false, true, false, false, false, true, false, false, false, false, false, true, true);

var<private> global3: bool;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> vec4<i32> {
    global1 = _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_add_i32(global4.a.a, 4996i), -19091i), max(_wgslsmith_mod_vec3_i32(vec3<i32>(-14997i, global4.a.a, u_input.a), vec3<i32>(-1i, u_input.b, -19143i)), vec3<i32>(global4.a.a, u_input.b, -2147483647i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(-37335i, 35932i, global4.a.a), vec3<i32>(u_input.a, 1i, global4.a.a))), reverseBits(vec3<i32>(_wgslsmith_sub_i32(global4.a.a, 2147483647i), ~(-15381i), 24039i ^ u_input.b)) ^ firstTrailingBit(-vec3<i32>(49400i, global4.a.a, global4.a.a)));
    var var_0 = -61413i;
    var var_1 = Struct_2(Struct_1(abs(global4.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x)))), select(select(global4.a.c, global4.a.c, global4.a.c), vec4<bool>(arg_1, 7904i > u_input.a, true, !arg_1), global2[_wgslsmith_index_u32(22737u, 17u)])), global4.b);
    global2 = array<bool, 17>();
    global0 = array<vec3<f32>, 9>();
    return vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.a, 60668i, var_1.a.a);
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-982f, -1098f, global4.a.b, global4.a.b))), global2[_wgslsmith_index_u32(global4.b.x, 17u)]) & select(arg_0, _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, ~(-2147483647i), _wgslsmith_sub_i32(1i, 1i), arg_0.x), vec4<i32>(abs(-2502i), select(2147483647i, 9691i, global4.a.c.x), arg_0.x, global4.a.a)), select(global4.a.c.x, false, false));
    let var_1 = global4.a;
    var var_2 = ~1i;
    var var_3 = Struct_3(Struct_1(global4.a.a, var_1.b, vec4<bool>(true || any(var_1.c), true, false, all(!var_1.c.zzx))), _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(f32(-1f) * -1167f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.b)), _wgslsmith_mult_vec2_i32(arg_0.yw, _wgslsmith_div_vec2_i32(-var_0.yy, vec2<i32>(_wgslsmith_dot_vec3_i32(arg_0.zww, vec3<i32>(u_input.a, var_1.a, 48699i)), ~global4.a.a))), vec3<u32>(global4.b.x, 0u, select(2266u, global4.b.x, false)));
    var var_4 = var_3.d.x;
    return Struct_2(Struct_1(arg_0.x, 1000f, !global4.a.c), ~countOneBits(global4.b));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = ~u_input.c;
    global4 = func_2(select(-_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.b, arg_0, -1i) << (vec4<u32>(4294967295u, var_0, var_0, 1u) % vec4<u32>(32u)), max(vec4<i32>(global4.a.a, 47281i, global4.a.a, u_input.b), vec4<i32>(-2147483647i, -12614i, -24238i, 2147483647i))), vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 19382i), vec2<i32>(global4.a.a, global4.a.a)), abs(global4.a.a), _wgslsmith_clamp_i32(min(38394i, u_input.b), i32(-1i) * -2147483647i, ~(-2147483647i)), -_wgslsmith_mult_i32(54462i, global4.a.a)), global4.a.c.x));
    let var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(global4.b, ~global4.b), ~global4.b);
    global0 = array<vec3<f32>, 9>();
    let var_2 = Struct_3(global4.a, select(false, all(vec2<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(1u, 17u)], true, global4.a.c.x)), global2[_wgslsmith_index_u32(~global4.b.x, 17u)])), global2[_wgslsmith_index_u32(abs(select(~0u, global4.b.x << (global4.b.x % 32u), global2[_wgslsmith_index_u32(4294967295u, 17u)] & false)), 17u)]), vec2<i32>(-10018i, _wgslsmith_mod_i32(u_input.a, -1i)), vec3<u32>(_wgslsmith_dot_vec3_u32(min(~vec3<u32>(29277u, 57228u, var_1.x), vec3<u32>(55448u, 1u, 0u)), max(vec3<u32>(var_1.x, 0u, global4.b.x), global4.b) >> (abs(vec3<u32>(1u, u_input.c, var_1.x)) % vec3<u32>(32u))), var_1.x, _wgslsmith_div_u32(1u, ~u_input.c)));
    return _wgslsmith_f_op_f32(func_2(~_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, -1i, arg_0, u_input.b), vec4<i32>(-2147483647i, -6362i, 29110i, 0i), vec4<i32>(arg_0, u_input.a, u_input.b, u_input.a)), vec4<i32>(var_2.c.x, u_input.a, 2147483647i, arg_0))).a.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.a.b, _wgslsmith_f_op_f32(1180f * _wgslsmith_f_op_f32(f32(-1f) * -1095f))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = ~2147483647i;
    global2 = array<bool, 17>();
    global1 = ~(global4.a.a << (1u % 32u));
    var var_1 = any(!vec4<bool>(true, any(vec2<bool>(true, true)), all(!arg_0.c), select(global2[_wgslsmith_index_u32(u_input.c, 17u)], false, select(true, global2[_wgslsmith_index_u32(global4.b.x, 17u)], true))));
    var var_2 = 1u;
    return global4.a.c.x || func_2(firstTrailingBit(vec4<i32>(1i, func_3(vec4<f32>(arg_1, -389f, 1000f, arg_1), arg_0.c.x).x, ~global4.a.a, 1i))).a.c.x;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = Struct_1(i32(-1i) * -7758i, _wgslsmith_div_f32(-1309f, _wgslsmith_f_op_f32(-arg_3.a.b)), !func_2(-abs(vec4<i32>(2147483647i, 8180i, arg_3.a.a, arg_1.a))).a.c);
    var var_1 = vec4<bool>(false, all(vec3<bool>(arg_0.x, all(select(vec3<bool>(var_0.c.x, arg_3.a.c.x, arg_3.a.c.x), arg_1.c.yzz, arg_1.c.x)), all(select(arg_1.c, vec4<bool>(true, arg_0.x, var_0.c.x, true), false)))), arg_0.x, true);
    global4 = Struct_2(func_2(vec4<i32>(func_3(vec4<f32>(var_0.b, -352f, global4.a.b, 404f), arg_1.c.x).x, ~arg_3.a.a, -(~(-14387i)), reverseBits(arg_3.a.a))).a, abs(_wgslsmith_mod_vec3_u32(global4.b, select(vec3<u32>(4294967295u, global4.b.x, 9574u) | vec3<u32>(global4.b.x, 22312u, global4.b.x), ~vec3<u32>(10202u, u_input.c, 10133u), all(arg_0.yzw)))));
    let var_2 = max(global4.b.x >> (abs(4294967295u) % 32u), ~4294967295u);
    global0 = array<vec3<f32>, 9>();
    return Struct_3(func_2(~(countOneBits(vec4<i32>(-1i, global4.a.a, 0i, arg_1.a)) & vec4<i32>(-2147483647i, arg_3.c.x, 373i, arg_1.a))).a, false | arg_0.x, max(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.b, 1677f, 837f, var_0.b)), true).ww, -func_3(vec4<f32>(-110f, -259f, -573f, -1104f), false).yw ^ _wgslsmith_mult_vec2_i32(arg_2, arg_3.c)), _wgslsmith_div_vec3_u32(~arg_3.d, arg_3.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(53752i, _wgslsmith_f_op_f32(ceil(global4.a.b)), !vec4<bool>(all(global4.a.c), true, global4.a.c.x, 21347u <= global4.b.x)), vec3<u32>(firstLeadingBit(_wgslsmith_mult_u32(30159u, global4.b.x) & ~global4.b.x), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(66178u, 0u, 19775u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 41884u, 4294967295u, global4.b.x), vec4<u32>(25232u, global4.b.x, 74305u, 4294967295u)) & ~vec4<u32>(18341u, u_input.c, 42771u, 25571u)), 27185u));
    global3 = !all(vec2<bool>(var_0.a.c.x, false)) & all(!(!(!vec3<bool>(var_0.a.c.x, global2[_wgslsmith_index_u32(global4.b.x, 17u)], global2[_wgslsmith_index_u32(39839u, 17u)]))));
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(global4.b.x & global4.b.x, 730u), _wgslsmith_sub_vec2_u32(global4.b.zx, firstLeadingBit(var_0.b.xz)));
    let var_2 = global2[_wgslsmith_index_u32(~u_input.c, 17u)];
    var var_3 = var_1.x;
    var var_4 = _wgslsmith_f_op_f32(global4.a.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1883f)))));
    var var_5 = func_5(vec4<bool>(all(global4.a.c.xy), false, true & (_wgslsmith_f_op_f32(var_0.a.b * global4.a.b) > _wgslsmith_f_op_f32(global4.a.b + global4.a.b)), func_4(global4.a, _wgslsmith_f_op_f32(func_1(-u_input.a)))), Struct_1(54619i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -218f) + var_0.a.b)), func_2(-func_3(vec4<f32>(-421f, -2340f, global4.a.b, -458f), false)).a.c), vec2<i32>(u_input.a, var_0.a.a << (_wgslsmith_sub_u32(var_1.x, var_1.x) % 32u)) | vec2<i32>(9558i, 4904i), Struct_3(Struct_1(~(i32(-1i) * -2147483647i), func_2(countOneBits(vec4<i32>(u_input.a, u_input.a, var_0.a.a, u_input.b))).a.b, vec4<bool>(global4.a.c.x, true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, var_0.b.x), 17u)], false)), !any(!vec4<bool>(var_0.a.c.x, global4.a.c.x, false, global4.a.c.x)), select(vec2<i32>(u_input.a & global4.a.a, countOneBits(1i)), countOneBits(~vec2<i32>(u_input.a, 0i)), true), vec3<u32>(1u, global4.b.x, func_2(~vec4<i32>(var_0.a.a, global4.a.a, -1i, global4.a.a)).b.x)));
    let var_6 = Struct_1(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) + _wgslsmith_f_op_f32(sign(var_0.a.b))), select(func_2(~vec4<i32>(var_5.a.a, var_0.a.a, var_0.a.a, u_input.a)).a.c, select(!func_5(var_5.a.c, Struct_1(var_5.c.x, 1199f, global4.a.c), vec2<i32>(0i, 9547i), Struct_3(global4.a, true, vec2<i32>(-1i, u_input.a), global4.b)).a.c, var_0.a.c, (false && var_0.a.c.x) || all(vec3<bool>(true, false, true))), true));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<i32>(-u_input.a, func_5(var_6.c, Struct_1(2147483647i, -230f, vec4<bool>(global4.a.c.x, global4.a.c.x, false, true)), vec2<i32>(-18210i, 39040i), Struct_3(Struct_1(var_6.a, 961f, var_5.a.c), true, var_5.c, var_0.b)).c.x, 0i)), _wgslsmith_add_i32(u_input.a, var_0.a.a) >> (abs(~firstTrailingBit(41160u)) % 32u), 1u, _wgslsmith_mod_vec2_u32(var_0.b.zx << (var_0.b.xy % vec2<u32>(32u)), ~(~max(vec2<u32>(1952u, global4.b.x), vec2<u32>(u_input.c, 7965u)))), max(abs(vec4<u32>(global4.b.x, var_0.b.x, var_5.d.x, var_0.b.x)), vec4<u32>(_wgslsmith_add_u32(var_1.x, u_input.c), ~u_input.c, func_5(var_0.a.c, Struct_1(16537i, 2155f, var_6.c), vec2<i32>(u_input.b, 43642i), Struct_3(Struct_1(-1i, var_6.b, var_0.a.c), var_6.c.x, var_5.c, var_5.d)).d.x, ~132172u)) & select(~(~vec4<u32>(u_input.c, var_0.b.x, var_0.b.x, var_5.d.x)), vec4<u32>(global4.b.x, 62611u, ~var_0.b.x, u_input.c), func_5(global4.a.c, var_6, var_5.c ^ var_5.c, func_5(vec4<bool>(global2[_wgslsmith_index_u32(1u, 17u)], global4.a.c.x, true, global2[_wgslsmith_index_u32(var_1.x, 17u)]), Struct_1(var_6.a, var_0.a.b, vec4<bool>(false, var_5.a.c.x, false, true)), var_5.c, Struct_3(var_0.a, var_6.c.x, var_5.c, vec3<u32>(global4.b.x, 0u, 1u)))).a.c));
}

