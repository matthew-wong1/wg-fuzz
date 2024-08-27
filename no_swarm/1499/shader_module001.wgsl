struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(15627u, 115958u, true, 62873u), Struct_3(Struct_2(4294967295u, 1u, false, 40644u)));

var<private> global1: array<i32, 19> = array<i32, 19>(43715i, 77935i, -40140i, i32(-2147483648), -41994i, -11957i, 7078i, 0i, 0i, -39422i, 2147483647i, 0i, i32(-2147483648), 15440i, 2147483647i, 2147483647i, -1i, 2147483647i, 0i);

var<private> global2: Struct_5 = Struct_5(vec2<i32>(-5139i, -4237i), -434f, Struct_3(Struct_2(1u, 1u, true, 12127u)));

var<private> global3: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(Struct_2(0u, 0u, false, 1u), Struct_3(Struct_2(0u, 4294967295u, false, 3297u))), Struct_4(Struct_2(35050u, 1u, true, 52044u), Struct_3(Struct_2(19790u, 4294967295u, false, 4294967295u))), Struct_4(Struct_2(24397u, 0u, false, 47137u), Struct_3(Struct_2(4294967295u, 30018u, false, 0u))), Struct_4(Struct_2(48706u, 0u, false, 4294967295u), Struct_3(Struct_2(4294967295u, 4294967295u, false, 7892u))), Struct_4(Struct_2(64306u, 1u, true, 1u), Struct_3(Struct_2(1u, 0u, true, 1u))), Struct_4(Struct_2(0u, 33327u, true, 5531u), Struct_3(Struct_2(4294967295u, 78629u, true, 59u))));

var<private> global4: vec2<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_sub_u32(~reverseBits(_wgslsmith_add_u32(u_input.c.x & 62303u, 1u)), u_input.c.x << (~1u % 32u));
    var var_1 = Struct_1(select(abs(firstTrailingBit(~vec4<u32>(global2.c.a.a, global0.b.a.d, 0u, 29153u))), abs(select(vec4<u32>(u_input.c.x, global2.c.a.a, 0u, var_0) & vec4<u32>(var_0, 4294967295u, global2.c.a.d, global2.c.a.b), vec4<u32>(1u, var_0, var_0, global2.c.a.a) >> (vec4<u32>(u_input.c.x, 10669u, u_input.c.x, 20884u) % vec4<u32>(32u)), true && global0.b.a.c)), vec4<bool>(global0.b.a.c, global0.b.a.c, all(vec2<bool>(global0.b.a.c, global0.b.a.c)), any(vec4<bool>(false, true, false, true)))));
    var var_2 = Struct_5(_wgslsmith_clamp_vec2_i32(global2.a, abs(_wgslsmith_mult_vec2_i32(u_input.a, max(vec2<i32>(u_input.b.x, 19861i), u_input.a))), ~vec2<i32>(min(global2.a.x, 1i), -global1[_wgslsmith_index_u32(var_0, 19u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * 768f), global2.c.a.c))), Struct_3(global2.c.a));
    var var_3 = !vec2<bool>(!((global0.a.a > var_2.c.a.a) && any(vec2<bool>(global0.a.c, global0.b.a.c))), false);
    let var_4 = 7862i;
    return vec4<bool>(var_3.x, var_2.c.a.c, all(vec3<bool>(var_2.c.a.c, var_3.x, select(any(vec2<bool>(true, false)), true, true && global2.c.a.c))), ~global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(var_1.a.ww, u_input.c), var_1.a.x, global0.a.c), 19u)] == _wgslsmith_dot_vec3_i32(u_input.d.yxw, ~select(u_input.b, vec3<i32>(-55934i, var_2.a.x, 1i), vec3<bool>(global2.c.a.c, global0.a.c, true))));
}

fn func_2() -> bool {
    global0 = global3[_wgslsmith_index_u32(25251u, 6u)];
    global0 = global3[_wgslsmith_index_u32(6683u, 6u)];
    let var_0 = !select(func_3(), !select(!vec4<bool>(global0.b.a.c, true, true, global0.a.c), select(vec4<bool>(true, false, false, global0.a.c), vec4<bool>(global2.c.a.c, global0.a.c, global0.b.a.c, global2.c.a.c), vec4<bool>(true, false, global2.c.a.c, global2.c.a.c)), vec4<bool>(global0.b.a.c, global2.c.a.c, true, global0.b.a.c)), !(!func_3()));
    global0 = Struct_4(Struct_2(17074u, ~(~1u), !select(false, true, true), 8204u), global2.c);
    var var_1 = vec2<f32>(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)) - global2.b))));
    return any(var_0.zyy);
}

fn func_1() -> vec4<bool> {
    var var_0 = all(!vec3<bool>(global0.b.a.c, all(!vec2<bool>(true, global0.a.c)), !global0.a.c));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1434f)), _wgslsmith_f_op_f32(global2.b + 296f), func_2()))), _wgslsmith_f_op_f32(231f - _wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(global2.b + global4.x)))));
    var_0 = global2.c.a.c;
    var var_2 = Struct_5(~(~select(global2.a, u_input.d.zy, vec2<bool>(global0.b.a.c, true))) << (u_input.c % vec2<u32>(32u)), var_1.x, Struct_3(Struct_2(~48541u, (32044u | u_input.c.x) << (4294967295u % 32u), _wgslsmith_f_op_f32(var_1.x * -155f) == -1333f, _wgslsmith_div_u32(min(global2.c.a.a, 65946u), _wgslsmith_mult_u32(u_input.c.x, 0u)))));
    let var_3 = 77025u;
    return select(vec4<bool>(false, true, !(-1i != _wgslsmith_dot_vec2_i32(var_2.a, vec2<i32>(21927i, 0i))), !global0.a.c), !vec4<bool>(76688u >= global2.c.a.d, false, any(vec4<bool>(global2.c.a.c, global2.c.a.c, false, true)) | true, func_2()), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.c.a;
    global3 = array<Struct_4, 6>();
    var var_1 = func_1();
    let var_2 = global0.b.a;
    global2 = Struct_5(_wgslsmith_mod_vec2_i32(vec2<i32>(-global2.a.x >> (~var_0.d % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(60036i, 1i, -1246i, global1[_wgslsmith_index_u32(25668u, 19u)]), vec4<i32>(global1[_wgslsmith_index_u32(global0.a.b, 19u)], 1i, 49767i, -4029i)), _wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(global2.a.x, global1[_wgslsmith_index_u32(global2.c.a.b, 19u)], -2147483647i, -26229i)))), select(u_input.a, u_input.a, false)), _wgslsmith_f_op_f32(abs(-1086f)), global2.c);
    let var_3 = ~vec4<i32>(~u_input.d.x, countOneBits(global2.a.x ^ -global2.a.x), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.c.x, ~global0.a.b | _wgslsmith_mult_u32(1u, 49197u)), 19u)], ~(-1i));
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(773f, 711f), vec2<f32>(1172f, -1000f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(357f, -398f), vec2<f32>(global2.b, -514f), var_1.wz))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1022f, global2.b), vec2<f32>(-1223f, global2.b))))))));
    var_1 = vec4<bool>(!global0.b.a.c, any(!vec2<bool>(true, !var_1.x)), false, !(!func_2() && select(u_input.a.x <= 0i, !global2.c.a.c, false == var_0.c)));
    let var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(489f, 2221f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) - _wgslsmith_f_op_f32(floor(381f))), _wgslsmith_f_op_f32(floor(1f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.b, -1000f, -438f, _wgslsmith_f_op_f32(-var_4.x)), vec4<f32>(_wgslsmith_f_op_f32(abs(-225f)), -777f, -522f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(exp2(var_4.zzx)));
}

