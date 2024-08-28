struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 32>;

var<private> global2: array<f32, 14>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3) -> i32 {
    return _wgslsmith_sub_i32(8201i, -31388i);
}

fn func_3(arg_0: vec4<bool>) -> vec2<bool> {
    global0 = Struct_2(vec2<i32>(max(~(~global1[_wgslsmith_index_u32(u_input.d.x, 32u)]), global0.a.x), func_1(Struct_4(Struct_1(vec2<f32>(1116f, global2[_wgslsmith_index_u32(4294967295u, 14u)]))), Struct_3(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(0u, 14u)]), -global1[_wgslsmith_index_u32(9133u, 32u)], min(-2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 32u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(444u, 14u)] + global2[_wgslsmith_index_u32(0u, 14u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(368f, global2[_wgslsmith_index_u32(u_input.a.x, 14u)], -317f, global2[_wgslsmith_index_u32(u_input.c.x, 14u)]))))), true);
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~(~u_input.c.x), 14u)] + _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(4294967295u, 14u)]))), _wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(-459f * -1000f), -889f), global0.a.x, _wgslsmith_sub_i32(max((global1[_wgslsmith_index_u32(0u, 32u)] << (u_input.d.x % 32u)) << (~4294967295u % 32u), ~4091i), -2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -625f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-504f, global2[_wgslsmith_index_u32(57078u, 14u)], global0.b))) + 250f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-116f)), global2[_wgslsmith_index_u32(~reverseBits(4294967295u), 14u)])), _wgslsmith_f_op_f32(step(1000f, global2[_wgslsmith_index_u32(59734u, 14u)])), 134f));
    var var_1 = Struct_2(min(firstTrailingBit(-u_input.e.yy >> (u_input.d.yx % vec2<u32>(32u))), max(global0.a, vec2<i32>(~17717i, global0.a.x))), global0.b);
    let var_2 = ~u_input.e;
    var var_3 = -2147483647i;
    return select(select(vec2<bool>(true, !all(arg_0.zx)), vec2<bool>(all(select(arg_0, arg_0, arg_0)), var_1.b), vec2<bool>(any(vec3<bool>(false, false, global0.b)), true)), !arg_0.zx, firstTrailingBit(abs(700u) << (abs(0u) % 32u)) != u_input.a.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = ~(~(~u_input.d.x)) << (0u % 32u);
    global2 = array<f32, 14>();
    global1 = array<i32, 32>();
    let var_1 = all(vec3<bool>(arg_0.x, !(~var_0 != ~var_0), false));
    var var_2 = -222f;
    return select(~(~vec4<u32>(u_input.a.x, _wgslsmith_add_u32(var_0, var_0), var_0, u_input.d.x)), _wgslsmith_mult_vec4_u32(u_input.a, ~(u_input.a & vec4<u32>(9751u, 8182u, 590u, 4294967295u))) & _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(u_input.a), ~vec4<u32>(u_input.c.x, 1u, 1u, u_input.d.x)), vec4<u32>(~var_0, 19965u, 1886u, ~var_0), u_input.a), vec4<bool>(!arg_3.x, false, true, func_3(select(vec4<bool>(var_1, arg_0.x, var_1, true), select(vec4<bool>(arg_0.x, var_1, true, false), vec4<bool>(arg_0.x, false, true, false), vec4<bool>(true, arg_3.x, var_1, arg_3.x)), false)).x));
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec4_u32(min(~u_input.a, func_4(select(!arg_0, func_3(vec4<bool>(false, false, arg_0.x, true)), arg_0), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-132f, -183f, 600f, 725f)), 2147483647i, ~global0.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 14u)], _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -544f, global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(u_input.c.x, 14u)]), vec4<f32>(-950f, global2[_wgslsmith_index_u32(1u, 14u)], 595f, 806f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(255u, 14u)], 1000f, global2[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(105481u, 14u)], global2[_wgslsmith_index_u32(u_input.d.x, 14u)]), vec3<bool>(false, global0.b, true)))), arg_0)), max(vec4<u32>(0u, ~(~u_input.c.x), 4918u, 4294967295u), u_input.a));
    let var_1 = all(select(vec2<bool>(true, true), select(vec2<bool>(func_3(vec4<bool>(global0.b, global0.b, true, arg_0.x)).x, !global0.b), vec2<bool>(true, global0.b), true), false));
    let var_2 = vec2<bool>(select(!var_1, true, !all(vec3<bool>(true, true, true))), global0.b);
    var var_3 = var_0.xw;
    var var_4 = select(select(vec4<bool>(func_3(select(vec4<bool>(arg_0.x, false, var_2.x, var_1), vec4<bool>(var_1, arg_0.x, var_2.x, var_2.x), vec4<bool>(true, var_2.x, global0.b, false))).x, all(select(vec2<bool>(true, var_2.x), arg_0, false)), true, all(vec3<bool>(var_1, true, false))), vec4<bool>(global0.b, global0.b, true, !all(vec4<bool>(false, global0.b, global0.b, var_2.x))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, global0.b, true), vec4<bool>(var_2.x, arg_0.x, global0.b, true)), false)), select(select(select(select(vec4<bool>(global0.b, var_1, true, var_2.x), vec4<bool>(arg_0.x, false, false, false), vec4<bool>(false, var_2.x, true, var_1)), select(vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(var_2.x, true, var_1, false), true), any(vec4<bool>(false, false, true, true))), vec4<bool>(false, var_2.x, true, var_2.x && false), !vec4<bool>(global0.b, var_2.x, global0.b, var_2.x)), vec4<bool>(var_1, all(var_2), var_1, true), vec4<bool>(select(true, true, select(true, var_1, arg_0.x)), all(!vec4<bool>(true, global0.b, var_1, false)), select(global2[_wgslsmith_index_u32(1u, 14u)] != 155f, true, false || arg_0.x), all(select(var_2, vec2<bool>(true, true), vec2<bool>(var_2.x, false))))), var_2.x);
    return Struct_2(select(_wgslsmith_add_vec2_i32(~reverseBits(u_input.e.zy), vec2<i32>(min(2147483647i, 22747i), -u_input.e.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(u_input.b, 0i, global0.a.x), global1[_wgslsmith_index_u32(var_3.x, 32u)]), u_input.e.xy), var_4.x), any(vec3<bool>(!func_3(vec4<bool>(true, true, var_4.x, arg_0.x)).x, (global0.b != true) & global0.b, (global0.b | false) & var_1)));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_4) -> u32 {
    let var_0 = arg_3.a;
    var var_1 = abs(-33839i);
    let var_2 = arg_3;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(global0.a.x, 4707i, firstLeadingBit(-23349i), _wgslsmith_mod_i32(global0.a.x, _wgslsmith_dot_vec3_i32(u_input.e.xwy, vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.e.xxy, u_input.e.zyx), global1[_wgslsmith_index_u32(~u_input.d.x, 32u)], func_1(Struct_4(Struct_1(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(1u, 14u)]))), Struct_3(vec4<f32>(-961f, -647f, global2[_wgslsmith_index_u32(u_input.a.x, 14u)], -747f), 1i, -43481i, -233f, vec4<f32>(global2[_wgslsmith_index_u32(1u, 14u)], -1121f, global2[_wgslsmith_index_u32(u_input.c.x, 14u)], global2[_wgslsmith_index_u32(u_input.d.x, 14u)])))))));
    var var_1 = !vec3<bool>(!any(select(vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(global0.b, false, true), true)), true, true);
    var var_2 = global0.b;
    var var_3 = _wgslsmith_f_op_f32(-182f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -765f) * _wgslsmith_f_op_f32(-171f * global2[_wgslsmith_index_u32(1u, 14u)]))) * _wgslsmith_f_op_f32(-1747f - global2[_wgslsmith_index_u32(~select(u_input.d.x, 23503u, var_1.x), 14u)])));
    var var_4 = !(!vec4<bool>(var_1.x, true, any(!vec3<bool>(var_1.x, global0.b, false)), var_1.x));
    global0 = Struct_2(-(~_wgslsmith_mult_vec2_i32(var_0.zx, _wgslsmith_sub_vec2_i32(vec2<i32>(-31454i, -2147483647i), vec2<i32>(global0.a.x, -2147483647i)))), global0.b);
    var_1 = var_4.wxx;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(func_5(global2[_wgslsmith_index_u32(0u, 14u)], func_2(var_1.yx), var_4.zyw, Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(90227u, 14u)], -1183f))))), 14u)]);
}

