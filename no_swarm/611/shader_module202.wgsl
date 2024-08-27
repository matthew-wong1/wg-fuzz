struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global1: bool = true;

var<private> global2: array<f32, 16> = array<f32, 16>(864f, 1418f, 1235f, 241f, -1399f, -1108f, 1126f, -792f, 401f, -824f, -986f, 620f, 884f, -267f, 209f, 308f);

var<private> global3: array<vec4<i32>, 19>;

var<private> global4: array<vec4<i32>, 28>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> vec2<bool> {
    return global0.xx;
}

fn func_3() -> f32 {
    var var_0 = ~_wgslsmith_mod_i32(_wgslsmith_div_i32(21026i, -min(-52821i, -26303i)), i32(-1i) * -2147483647i);
    let var_1 = Struct_1(~1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 16u)]))), -12874i);
    let var_2 = Struct_3(Struct_2(!(_wgslsmith_f_op_f32(f32(-1f) * -552f) == var_1.b), var_1, vec2<bool>(true, !global0.x && global0.x)), !vec3<bool>(any(select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(false, global0.x, global0.x, true))), (var_1.a >= var_1.c) != true, true), var_1.c ^ var_1.c, Struct_2((!global0.x && all(global0.xwz)) & false, Struct_1(max(firstLeadingBit(2147483647i), var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 16u)] * 185f) + -497f), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, var_1.a, -38514i), -vec3<i32>(2147483647i, var_1.a, -1248i))), vec2<bool>(false, false || !global0.x)));
    let var_3 = 0u;
    global2 = array<f32, 16>();
    return var_1.b;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: bool) -> vec3<f32> {
    global2 = array<f32, 16>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0, 16u)]) - global2[_wgslsmith_index_u32(79851u, 16u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.a.x, 16u)]))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.a.x), ~u_input.b.x), 16u)]))), -443f, global2[_wgslsmith_index_u32(~abs(firstLeadingBit(9562u)), 16u)]);
    var var_1 = Struct_3(Struct_2(all(arg_1.zz), Struct_1(0i, _wgslsmith_f_op_f32(floor(478f)), arg_2.x), select(select(!arg_1.zy, func_2(), false), global0.zw, (true && global0.x) || arg_3)), global0.zzy, ~(-2147483647i), Struct_2(!global0.x, Struct_1(0i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(555f, -908f)))), _wgslsmith_div_i32(arg_2.x | -40559i, i32(-1i) * -78208i)), global0.xx));
    var var_2 = Struct_4(var_0, Struct_3(Struct_2(25035u == (arg_0 & 0u), Struct_1(_wgslsmith_sub_i32(arg_2.x, var_1.c), global2[_wgslsmith_index_u32(u_input.a.x ^ 4294967295u, 16u)], ~var_1.a.b.c), vec2<bool>(true, true)), vec3<bool>(true, true, true), arg_2.x, Struct_2(all(!vec4<bool>(arg_1.x, false, true, arg_1.x)), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, arg_2.x, -5902i), global3[_wgslsmith_index_u32(u_input.a.x, 19u)]), var_0.x, var_1.d.b.c), !(!arg_1.xz))), var_1.d.b, Struct_3(Struct_2(_wgslsmith_f_op_f32(step(var_0.x, 655f)) > _wgslsmith_f_op_f32(-var_1.d.b.b), Struct_1(arg_2.x >> (1u % 32u), var_1.a.b.b, ~3538i), select(vec2<bool>(true, var_1.d.c.x), var_1.b.yx, arg_1.zx)), global0.xwx, 42162i, Struct_2(any(vec4<bool>(true, var_1.a.a, true, arg_1.x)), var_1.d.b, var_1.a.c)), Struct_2(func_2().x, Struct_1(~1i, var_0.x, ~(-12365i)), global0.yw));
    var_2 = Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-442f)), var_2.a.x, 1403f, _wgslsmith_f_op_f32(f32(-1f) * -130f)), _wgslsmith_f_op_vec4_f32(var_2.a * vec4<f32>(_wgslsmith_f_op_f32(func_3()), var_0.x, -931f, var_0.x))), var_2.b, Struct_1(~abs(-6290i), _wgslsmith_f_op_f32(-var_1.a.b.b), select(1i, var_2.c.a, true)), Struct_3(var_2.e, var_2.b.b, reverseBits(reverseBits(27252i)), Struct_2(true, var_2.e.b, select(vec2<bool>(true, arg_3), var_2.b.d.c, !vec2<bool>(var_1.d.a, var_1.b.x)))), Struct_2(!(!arg_3), var_1.a.b, vec2<bool>(any(var_2.e.c), true)));
    return var_0.zxx;
}

fn func_4(arg_0: vec3<f32>, arg_1: u32) -> Struct_4 {
    global1 = true;
    let var_0 = Struct_1(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_mod_i32(61153i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(6990i, -1i), vec2<i32>(-1i, -1i)), ~31279i))), -1603f, -1i);
    global3 = array<vec4<i32>, 19>();
    var var_1 = -946f;
    var var_2 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(15687u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1, u_input.b.x), vec3<u32>(u_input.a.x, arg_1, arg_1))), 16u)] == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1094f, 2212f)))), var_0, select(vec2<bool>(func_2().x, true), vec2<bool>(global0.x & global0.x, global0.x), false)), global0.xxz, reverseBits(-31234i), Struct_2(false, var_0, vec2<bool>(false, true)));
    return Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 3704u, arg_1, 1u), vec4<u32>(0u, arg_1, 0u, arg_1)), 16u)]), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 16u)], arg_0.x), _wgslsmith_div_f32(797f, -1216f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1, 16u)]), 1635f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(932f, -1476f, 464f, -659f)))))), Struct_3(var_2.d, !vec3<bool>(false, var_2.a.a, true), i32(-1i) * -1i, var_2.a), var_2.a.b, Struct_3(var_2.d, !select(!vec3<bool>(true, true, var_2.a.c.x), !var_2.b, var_2.b), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.d.b.c, var_2.d.b.c, var_0.c), vec3<i32>(14685i, 1i, var_0.c))), var_2.a), var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    var var_0 = u_input.a.x;
    var var_1 = u_input.a.x;
    let var_2 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(393f, global2[_wgslsmith_index_u32(20552u, 16u)]), _wgslsmith_f_op_f32(f32(-1f) * -910f), -1048f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-554f, -2241f, -1348f) - vec3<f32>(-452f, global2[_wgslsmith_index_u32(u_input.a.x, 16u)], -530f)), _wgslsmith_f_op_vec3_f32(func_1(1u, global0.wyz, vec3<i32>(-10303i, -22792i, 6352i), true)))))), u_input.b.x);
    global0 = vec4<bool>(true, var_2.d.a.c.x, global0.x, all(select(vec2<bool>(func_4(vec3<f32>(global2[_wgslsmith_index_u32(32056u, 16u)], var_2.d.d.b.b, global2[_wgslsmith_index_u32(u_input.a.x, 16u)]), u_input.b.x).b.b.x, global2[_wgslsmith_index_u32(4294967295u, 16u)] > global2[_wgslsmith_index_u32(31166u, 16u)]), global0.xx, false)));
    let var_3 = max(u_input.a.x, countOneBits(select(_wgslsmith_mult_u32(0u, u_input.b.x), firstLeadingBit(4294967295u), false)));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(var_2.a, var_2.a), vec4<i32>(1i, 1i, var_2.d.c, var_2.c.a) ^ global4[_wgslsmith_index_u32(countOneBits(27591u), 28u)]);
}

