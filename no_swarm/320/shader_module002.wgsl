struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<bool, 21> = array<bool, 21>(true, true, false, false, false, false, false, false, false, true, false, true, false, true, false, false, false, true, true, false, true);

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<i32>(3182i, -98416i, -1i, 0i), vec2<bool>(false, true), -143f, vec2<f32>(-1523f, 2168f)), Struct_1(vec4<i32>(2147483647i, -1134i, 2147483647i, 0i), vec2<bool>(true, false), 1000f, vec2<f32>(1470f, 153f)), Struct_1(vec4<i32>(-1i, -57866i, 20563i, 2147483647i), vec2<bool>(false, true), 775f, vec2<f32>(1271f, -1943f)), Struct_1(vec4<i32>(-13410i, 2147483647i, 4331i, 0i), vec2<bool>(false, true), 2123f, vec2<f32>(-796f, -212f)), Struct_1(vec4<i32>(-26946i, -36117i, 2147483647i, -21553i), vec2<bool>(true, true), 1112f, vec2<f32>(-1727f, 620f)), Struct_1(vec4<i32>(8412i, 6496i, 260i, -5710i), vec2<bool>(false, true), 1027f, vec2<f32>(-1031f, -100f)), Struct_1(vec4<i32>(1i, 0i, i32(-2147483648), 2147483647i), vec2<bool>(false, false), -1164f, vec2<f32>(-326f, -248f)), Struct_1(vec4<i32>(-13666i, -1i, -88698i, 1i), vec2<bool>(true, true), 664f, vec2<f32>(2005f, 521f)), Struct_1(vec4<i32>(-43116i, 3483i, 39899i, 1i), vec2<bool>(false, false), -1283f, vec2<f32>(-1719f, -115f)), Struct_1(vec4<i32>(-73762i, 2147483647i, -27557i, 223i), vec2<bool>(true, true), 882f, vec2<f32>(-2077f, -1571f)), Struct_1(vec4<i32>(-9786i, 2147483647i, 1i, -26913i), vec2<bool>(false, false), -470f, vec2<f32>(-446f, -1182f)), Struct_1(vec4<i32>(-1779i, 47426i, -6320i, 0i), vec2<bool>(true, false), -2015f, vec2<f32>(435f, 1151f)), Struct_1(vec4<i32>(i32(-2147483648), -1i, 0i, -54141i), vec2<bool>(true, false), -240f, vec2<f32>(-1705f, 385f)), Struct_1(vec4<i32>(-66814i, 0i, 12622i, 16547i), vec2<bool>(false, true), -348f, vec2<f32>(-1000f, -266f)), Struct_1(vec4<i32>(1i, 39430i, 2147483647i, -20794i), vec2<bool>(true, true), -481f, vec2<f32>(1358f, 1000f)), Struct_1(vec4<i32>(73989i, -71308i, i32(-2147483648), 2711i), vec2<bool>(true, true), 1230f, vec2<f32>(-1342f, -957f)));

var<private> global4: Struct_1 = Struct_1(vec4<i32>(12603i, -1i, -3920i, -65098i), vec2<bool>(true, true), 294f, vec2<f32>(-2137f, 1000f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: f32) -> vec4<bool> {
    global1 = array<Struct_1, 4>();
    global3 = array<Struct_1, 16>();
    var var_0 = ~u_input.c.x;
    var var_1 = global1[_wgslsmith_index_u32(4205u, 4u)];
    let var_2 = abs(var_1.a) & ~global0.a;
    return !select(select(!select(vec4<bool>(true, var_1.b.x, false, global4.b.x), vec4<bool>(true, true, true, false), false), !select(vec4<bool>(true, global0.b.x, true, true), vec4<bool>(false, global4.b.x, true, var_1.b.x), vec4<bool>(global0.b.x, false, false, false)), true), vec4<bool>(true, all(!vec4<bool>(false, var_1.b.x, global2[_wgslsmith_index_u32(u_input.c.x, 21u)], false)), global2[_wgslsmith_index_u32(1u, 21u)], any(vec4<bool>(false, global0.b.x, false, var_1.b.x))), vec4<bool>(true, global0.a.x > _wgslsmith_div_i32(global4.a.x, 0i), false, false));
}

fn func_2(arg_0: i32, arg_1: f32) -> i32 {
    let var_0 = vec2<u32>(~countOneBits(u_input.c.x), _wgslsmith_add_u32(1u, u_input.b.x));
    global2 = array<bool, 21>();
    var var_1 = func_3(-1000f, _wgslsmith_f_op_f32(-1f));
    var var_2 = _wgslsmith_add_u32(~var_0.x, u_input.b.x);
    var var_3 = _wgslsmith_f_op_f32(-270f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x + _wgslsmith_div_f32(1071f, _wgslsmith_f_op_f32(-1193f * arg_1))) + _wgslsmith_div_f32(954f, global4.c)));
    return arg_0;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global0 = global1[_wgslsmith_index_u32(30170u, 4u)];
    global0 = Struct_1(vec4<i32>(_wgslsmith_mult_i32(abs(global0.a.x), -2147483647i), -(-114733i & ~global4.a.x), ~arg_0.x, u_input.d), !(!(!vec2<bool>(global0.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 21u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1733f, _wgslsmith_f_op_f32(f32(-1f) * -227f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.d.x, global0.c)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1491f, 1226f))), _wgslsmith_f_op_vec2_f32(round(global4.d)), false)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.d) * _wgslsmith_f_op_vec2_f32(select(global0.d, global4.d, all(vec3<bool>(global4.b.x, false, global4.b.x)))))));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(u_input.c.x >> ((1u & u_input.b.x) % 32u)), u_input.b.x) >> (69283u % 32u), 4u)];
    var var_0 = _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(-func_2(u_input.d, _wgslsmith_f_op_f32(-global4.c)), _wgslsmith_mod_i32(global0.a.x, global4.a.x), global4.a.x, global0.a.x));
    let var_1 = abs(u_input.b);
    return Struct_1(global0.a, global0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.d.x))))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1005f)))), _wgslsmith_f_op_f32(-global0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(u_input.a.xz >> (~vec2<u32>(_wgslsmith_add_u32(0u, u_input.c.x), 1u) % vec2<u32>(32u)));
    let var_0 = ~global0.a.x;
    let var_1 = ~99277u;
    global1 = array<Struct_1, 4>();
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(sign(-367f));
    var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(~(~var_1)), ~1u), 21u)] && global0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3), max(~max(vec4<u32>(32243u, 17084u, 32638u, 20931u), vec4<u32>(5578u, 0u, 21896u, var_1)), vec4<u32>(abs(~1u), ~(~var_1), ~u_input.c.x, _wgslsmith_mod_u32(var_1, 0u))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(525f, global4.c) * _wgslsmith_f_op_f32(trunc(1047f))), 925f))), _wgslsmith_sub_u32(4294967295u, ~41200u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 - global0.c) * _wgslsmith_f_op_f32(var_3 - -2317f)) + 179f))));
}

