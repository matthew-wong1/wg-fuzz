struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_2(-1i, 1221f, Struct_1(false), Struct_1(true)), Struct_2(1i, -167f, Struct_1(true), Struct_1(true))), Struct_3(Struct_2(-1i, 950f, Struct_1(false), Struct_1(true)), Struct_2(-29457i, 1265f, Struct_1(false), Struct_1(false))), Struct_3(Struct_2(1i, -162f, Struct_1(false), Struct_1(true)), Struct_2(0i, 1140f, Struct_1(true), Struct_1(true))), Struct_3(Struct_2(-2135i, 234f, Struct_1(true), Struct_1(false)), Struct_2(-44092i, 508f, Struct_1(true), Struct_1(true))), Struct_3(Struct_2(-1i, 1354f, Struct_1(false), Struct_1(false)), Struct_2(5221i, -781f, Struct_1(true), Struct_1(true))), Struct_3(Struct_2(-26292i, -906f, Struct_1(false), Struct_1(false)), Struct_2(-23724i, 1358f, Struct_1(false), Struct_1(false))), Struct_3(Struct_2(54479i, 281f, Struct_1(false), Struct_1(true)), Struct_2(-22788i, 1057f, Struct_1(true), Struct_1(true))), Struct_3(Struct_2(-9528i, -158f, Struct_1(true), Struct_1(true)), Struct_2(34770i, -1050f, Struct_1(true), Struct_1(false))), Struct_3(Struct_2(-42602i, 672f, Struct_1(false), Struct_1(false)), Struct_2(i32(-2147483648), -981f, Struct_1(false), Struct_1(false))), Struct_3(Struct_2(2147483647i, 700f, Struct_1(true), Struct_1(false)), Struct_2(-39422i, -169f, Struct_1(false), Struct_1(true))), Struct_3(Struct_2(-17765i, -787f, Struct_1(true), Struct_1(true)), Struct_2(-15307i, 406f, Struct_1(true), Struct_1(false))), Struct_3(Struct_2(-20188i, 103f, Struct_1(true), Struct_1(false)), Struct_2(-1i, 407f, Struct_1(false), Struct_1(true))), Struct_3(Struct_2(i32(-2147483648), 1380f, Struct_1(true), Struct_1(false)), Struct_2(-5210i, 483f, Struct_1(false), Struct_1(false))), Struct_3(Struct_2(-27023i, -986f, Struct_1(false), Struct_1(true)), Struct_2(1i, -113f, Struct_1(false), Struct_1(false))), Struct_3(Struct_2(28779i, -896f, Struct_1(true), Struct_1(false)), Struct_2(-49330i, -888f, Struct_1(false), Struct_1(false))), Struct_3(Struct_2(-10545i, 1449f, Struct_1(true), Struct_1(true)), Struct_2(0i, -125f, Struct_1(true), Struct_1(false))));

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(1i, 1245f, Struct_1(true), Struct_1(true)), Struct_2(1i, -175f, Struct_1(true), Struct_1(false)), Struct_2(2147483647i, -750f, Struct_1(false), Struct_1(true)), Struct_2(15781i, -1000f, Struct_1(false), Struct_1(false)), Struct_2(4134i, -1589f, Struct_1(true), Struct_1(true)), Struct_2(-1i, -1715f, Struct_1(true), Struct_1(false)), Struct_2(i32(-2147483648), -1455f, Struct_1(false), Struct_1(true)), Struct_2(-17470i, -332f, Struct_1(false), Struct_1(false)), Struct_2(0i, 1570f, Struct_1(false), Struct_1(false)), Struct_2(1i, -1066f, Struct_1(false), Struct_1(true)), Struct_2(0i, 1464f, Struct_1(true), Struct_1(false)), Struct_2(1i, -1199f, Struct_1(false), Struct_1(true)), Struct_2(-5621i, 736f, Struct_1(true), Struct_1(true)), Struct_2(1i, -836f, Struct_1(false), Struct_1(false)), Struct_2(31902i, -1291f, Struct_1(false), Struct_1(false)), Struct_2(-22789i, 1158f, Struct_1(true), Struct_1(true)), Struct_2(30723i, 184f, Struct_1(false), Struct_1(false)), Struct_2(29194i, 704f, Struct_1(true), Struct_1(true)), Struct_2(i32(-2147483648), -1416f, Struct_1(false), Struct_1(true)), Struct_2(25673i, -151f, Struct_1(true), Struct_1(true)), Struct_2(-43609i, -103f, Struct_1(false), Struct_1(true)), Struct_2(0i, 880f, Struct_1(false), Struct_1(false)), Struct_2(23187i, 234f, Struct_1(false), Struct_1(false)), Struct_2(0i, 1772f, Struct_1(true), Struct_1(false)), Struct_2(-1i, 402f, Struct_1(true), Struct_1(false)), Struct_2(0i, -943f, Struct_1(false), Struct_1(false)), Struct_2(-1i, 1211f, Struct_1(true), Struct_1(true)), Struct_2(2147483647i, -1602f, Struct_1(false), Struct_1(true)));

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global3: array<Struct_2, 21>;

var<private> global4: array<i32, 10> = array<i32, 10>(-1i, 46554i, -1i, 43164i, 12304i, 2147483647i, 38617i, 1i, 0i, 2147483647i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> f32 {
    global3 = array<Struct_2, 21>();
    var var_0 = Struct_1(!(true | global2.x));
    global2 = !(!(!vec4<bool>(false, arg_1 & true, true, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-597f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-721f * 396f)) + _wgslsmith_div_f32(-506f, _wgslsmith_f_op_f32(select(230f, 114f, global2.x)))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> u32 {
    let var_0 = Struct_1(!arg_0.d.a);
    let var_1 = u_input.a.x;
    global2 = select(!select(select(!vec4<bool>(true, global2.x, false, false), vec4<bool>(true, false, global2.x, var_0.a), !vec4<bool>(arg_0.d.a, global2.x, true, arg_0.c.a)), !(!vec4<bool>(false, global2.x, arg_0.d.a, true)), select(select(vec4<bool>(true, global2.x, false, false), vec4<bool>(arg_0.d.a, false, true, true), vec4<bool>(true, true, global2.x, arg_0.c.a)), !vec4<bool>(arg_0.c.a, global2.x, true, arg_0.c.a), !vec4<bool>(arg_0.d.a, true, var_0.a, var_0.a))), select(vec4<bool>(arg_0.d.a, false, all(select(global2.zwy, global2.xzw, var_0.a)), arg_0.b == _wgslsmith_f_op_f32(-444f - 670f)), select(vec4<bool>(any(vec4<bool>(false, true, false, global2.x)), all(vec4<bool>(arg_0.c.a, true, false, false)), true, true), !select(vec4<bool>(arg_0.d.a, var_0.a, false, arg_0.d.a), vec4<bool>(false, global2.x, arg_0.c.a, global2.x), false), vec4<bool>(arg_0.d.a, var_0.a, true, select(var_0.a, arg_0.c.a, arg_0.c.a))), vec4<bool>(var_0.a, select(false, any(vec2<bool>(true, true)), true), arg_0.d.a, any(global2.zyz))), !vec4<bool>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1434f) > _wgslsmith_f_op_f32(-arg_0.b), true, arg_0.c.a));
    var var_2 = arg_0.d;
    let var_3 = Struct_2(-11776i, _wgslsmith_f_op_f32(arg_0.b * -1003f), arg_0.d, Struct_1(var_0.a));
    return _wgslsmith_clamp_u32(max(1u, ~(~0u)), ~select(firstTrailingBit(54822u) << (56179u % 32u), _wgslsmith_div_u32(~var_1, var_1), _wgslsmith_div_f32(-288f, 1970f) < _wgslsmith_f_op_f32(min(var_3.b, var_3.b))), 20940u);
}

fn func_2() -> StorageBuffer {
    global4 = array<i32, 10>();
    global4 = array<i32, 10>();
    global4 = array<i32, 10>();
    global4 = array<i32, 10>();
    global4 = array<i32, 10>();
    return StorageBuffer(~vec2<u32>(firstTrailingBit(countOneBits(u_input.c.x)), _wgslsmith_mod_u32(u_input.a.x, u_input.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(ceil(-557f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1399f, 1285f)) * _wgslsmith_f_op_f32(f32(-1f) * -405f))))), vec2<i32>(global4[_wgslsmith_index_u32(0u & func_3(Struct_2(u_input.e.x, -341f, Struct_1(false), Struct_1(global2.x)), vec3<i32>(global4[_wgslsmith_index_u32(4294967295u, 10u)], global4[_wgslsmith_index_u32(78903u, 10u)], 13323i)), 10u)], firstTrailingBit(min(u_input.e.x, countOneBits(28377i)))), _wgslsmith_div_f32(-2874f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1177f - _wgslsmith_f_op_f32(floor(-847f))) - _wgslsmith_div_f32(-1095f, _wgslsmith_f_op_f32(f32(-1f) * -599f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~abs(vec4<u32>(~110307u, u_input.c.x, u_input.c.x, u_input.a.x)));
    var var_1 = abs(~global4[_wgslsmith_index_u32(34523u, 10u)]);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f - -699f)) + -801f), 1000f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-590f)), 1928f), _wgslsmith_f_op_f32(-160f * _wgslsmith_div_f32(963f, 322f))))));
    var_1 = global4[_wgslsmith_index_u32(4294967295u, 10u)];
    var_0 = (~vec4<u32>(26818u, select(1u, var_0.x, true), 1u, 0u) >> (vec4<u32>(0u, ~_wgslsmith_div_u32(var_0.x, u_input.c.x), _wgslsmith_add_u32(u_input.a.x, u_input.a.x), 1u) % vec4<u32>(32u))) << (~vec4<u32>(~(0u << (u_input.c.x % 32u)), 0u, reverseBits(u_input.c.x), reverseBits(u_input.c.x) | ~u_input.c.x) % vec4<u32>(32u));
    let var_3 = u_input.c;
    var_2 = vec3<f32>(298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1847f * -396f) + _wgslsmith_f_op_f32(ceil(1000f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-505f * _wgslsmith_f_op_f32(func_1(Struct_1(true), global2.x, u_input.c.wxx))))) * 2958f));
    var var_4 = -u_input.e;
    let var_5 = Struct_1(false);
    let x = u_input.a;
    s_output = func_2();
}

