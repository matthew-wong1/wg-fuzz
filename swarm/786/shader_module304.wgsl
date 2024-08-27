struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-2126f, -190f, 455f, 1236f, 537f, 1502f, 226f, 727f, -1911f, -1242f, -558f, 710f, 1263f, -983f, 298f, 1044f, 978f, 494f, 451f, -1745f, 1165f, -1329f, 269f, 496f, -877f, -1000f, -1000f, -160f, 1374f, -418f);

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(168f, 4294967295u, 8136u), Struct_1(-516f, 20302u, 83482u), Struct_1(-1946f, 1u, 4294967295u), Struct_1(-1332f, 54123u, 94260u), Struct_1(1349f, 0u, 1u), Struct_1(-2153f, 14412u, 43194u), Struct_1(580f, 14136u, 4294967295u), Struct_1(775f, 32902u, 4294967295u), Struct_1(444f, 0u, 92087u), Struct_1(223f, 130551u, 0u), Struct_1(1000f, 8249u, 12016u));

var<private> global2: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(1i, 0i), vec2<i32>(13601i, 45584i), vec2<i32>(0i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(-14459i, 1i), vec2<i32>(-22838i, -935i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    let var_0 = vec2<i32>(u_input.d, u_input.d);
    global2 = array<vec2<i32>, 6>();
    global1 = array<Struct_1, 11>();
    var var_1 = -1068f;
    let var_2 = vec3<bool>(all(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, all(vec2<bool>(false, false))), any(vec2<bool>(false, true)) && true)), true, -22468i <= (firstLeadingBit(1213i) & (var_0.x ^ var_0.x)));
    return -1i;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global1 = array<Struct_1, 11>();
    let var_0 = func_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-397f, 610f), vec2<f32>(global0[_wgslsmith_index_u32(0u, 30u)], 372f)))))))));
    var var_1 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), any(vec3<bool>(true, false, true))), vec2<bool>(true, true), false || any(vec4<bool>(false, false, true, false))), vec2<bool>(true, false)), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, u_input.c), 30u)] < global0[_wgslsmith_index_u32(25750u, 30u)], true), any(vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), true, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0.x, 30u)], global0[_wgslsmith_index_u32(1u, 30u)]) > _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 30u)]), (u_input.c | arg_0.x) < min(u_input.c, 34549u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], 1055f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(arg_0.x, 30u)], -400f, 2293f, global0[_wgslsmith_index_u32(u_input.c, 30u)])))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(431f, global0[_wgslsmith_index_u32(arg_0.x, 30u)], global0[_wgslsmith_index_u32(u_input.c, 30u)], global0[_wgslsmith_index_u32(14197u, 30u)]) - vec4<f32>(600f, 1000f, global0[_wgslsmith_index_u32(arg_0.x, 30u)], global0[_wgslsmith_index_u32(arg_0.x, 30u)])) + vec4<f32>(global0[_wgslsmith_index_u32(37413u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(u_input.c, 30u)], -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -712f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1069f * global0[_wgslsmith_index_u32(arg_0.x, 30u)]))), 500f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(878f + global0[_wgslsmith_index_u32(4294967295u, 30u)])))));
    var var_3 = _wgslsmith_f_op_vec2_f32(var_2.xz * vec2<f32>(-963f, _wgslsmith_f_op_f32(exp2(var_2.x))));
    return Struct_1(var_2.x, 32102u, ~u_input.c);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> f32 {
    let var_0 = u_input.b == arg_2;
    var var_1 = Struct_1(arg_3, arg_1.c, ~16263u);
    var var_2 = Struct_2(vec3<bool>((1u <= _wgslsmith_div_u32(var_1.c, 9946u)) || all(vec3<bool>(var_0, var_0, false)), !(!any(vec3<bool>(true, var_0, var_0))), true), arg_1.a, arg_1.a);
    let var_3 = select(vec4<bool>(true, false, var_0, var_2.a.x), vec4<bool>(true, any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(var_2.a.x, false, var_0, true), vec4<bool>(var_2.a.x, true, false, var_0)), vec4<bool>(true, true, true, true), select(var_2.a.x, var_0, false))), all(vec4<bool>(false, true, true, false)), all(select(!vec4<bool>(var_2.a.x, var_0, var_0, var_2.a.x), select(vec4<bool>(var_2.a.x, var_2.a.x, var_0, var_2.a.x), vec4<bool>(var_2.a.x, false, false, var_0), false), !var_2.a.x))), select(!select(!vec4<bool>(var_0, var_2.a.x, var_0, var_0), vec4<bool>(false, var_2.a.x, false, var_2.a.x), !vec4<bool>(true, var_0, var_2.a.x, true)), vec4<bool>(any(vec4<bool>(true, var_2.a.x, var_2.a.x, var_0)), false, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(arg_1.c, var_1.c)) > 28728u, var_0), true));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -899f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - _wgslsmith_f_op_f32(sign(-344f)))))), 4294967295u, _wgslsmith_add_u32(33246u, func_2(firstLeadingBit(min(vec3<u32>(arg_0, var_1.b, 1u), vec3<u32>(u_input.c, var_1.b, 0u)))).c));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a) - 486f));
}

fn func_5(arg_0: u32, arg_1: f32) -> StorageBuffer {
    global1 = array<Struct_1, 11>();
    global1 = array<Struct_1, 11>();
    var var_0 = vec4<bool>((_wgslsmith_sub_u32(~0u, arg_0) ^ 4294967295u) >= 15955u, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.b, 41218i, -2147483647i), -u_input.a), vec4<i32>(10562i, 2147483647i, _wgslsmith_sub_i32(0i, 20556i), -2147483647i)) < -3007i, select(any(vec3<bool>(false, true, true)), any(vec4<bool>(true, u_input.b != u_input.a.x, false, true)), true), false);
    var var_1 = Struct_2(select(!select(!vec3<bool>(var_0.x, false, true), select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, false, var_0.x), true), var_0.xyx), vec3<bool>(any(select(vec2<bool>(false, false), var_0.wy, false)), any(!vec4<bool>(var_0.x, false, var_0.x, var_0.x)), all(vec2<bool>(false, true))), var_0.yzw), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(15830u, 30u)]))), global0[_wgslsmith_index_u32(arg_0, 30u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 30u)] * arg_1))))), 1242f);
    let var_2 = Struct_2(!select(vec3<bool>(any(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x)), all(var_0.xx), var_1.a.x), !vec3<bool>(var_0.x, var_0.x, var_1.a.x), var_0.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 30u)]), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(select(-690f, -612f, true))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(584f, var_2.c, arg_1, 1213f) - vec4<f32>(global0[_wgslsmith_index_u32(0u, 30u)], var_2.c, -307f, -169f)))))), func_2(vec3<u32>(_wgslsmith_mod_u32(0u << (arg_0 % 32u), ~u_input.c), ~1u, 4294967295u)).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -1000f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(166f, -1000f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1634f, -1827f)))))), 1i, ~abs(countOneBits(countOneBits(vec3<u32>(1u, 4294967295u, 70110u)))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: f32) -> StorageBuffer {
    global2 = array<vec2<i32>, 6>();
    let var_0 = 0i;
    global0 = array<f32, 30>();
    var var_1 = Struct_2(select(!select(vec3<bool>(true, true, true), vec3<bool>(arg_1, arg_1, true), all(vec4<bool>(arg_1, arg_1, false, arg_1))), !(!(!vec3<bool>(false, false, arg_1))), vec3<bool>(!arg_1 || all(vec3<bool>(arg_1, false, false)), !(arg_1 != arg_1), arg_1)), _wgslsmith_f_op_f32(max(286f, arg_3)), arg_3);
    global1 = array<Struct_1, 11>();
    return func_5(select(_wgslsmith_mult_u32(u_input.c, 69356u), ~arg_0.b, select(var_1.a.x | arg_1, !var_1.a.x, true) && true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(abs(u_input.c), func_2(reverseBits(vec3<u32>(u_input.c, arg_0.c, 13750u))), select(u_input.b, -arg_2.x, true), -1105f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 6>();
    let var_0 = true;
    let var_1 = 400f;
    global1 = array<Struct_1, 11>();
    var var_2 = var_0;
    var var_3 = -102f;
    var_2 = var_0;
    var var_4 = Struct_1(-553f, ~4294967295u, u_input.c);
    let x = u_input.a;
    s_output = func_1(global1[_wgslsmith_index_u32(u_input.c, 11u)], var_0, vec3<i32>(u_input.b, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.a.x)), _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(u_input.b, 0i, u_input.b, 19341i))), abs(u_input.d)), countOneBits(-u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1901f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 30u)] + var_4.a)), any(select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, var_0), var_0)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1969f)))));
}

