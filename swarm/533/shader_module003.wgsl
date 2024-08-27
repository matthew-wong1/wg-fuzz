struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: Struct_3 = Struct_3(vec4<bool>(true, false, false, false), vec3<bool>(true, false, false), vec2<f32>(100f, 1000f), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(4294967295u, 4294967295u, 1u), true, 1u, -124f), true);

var<private> global2: bool = false;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> f32 {
    global1 = Struct_3(vec4<bool>(select(~1u != _wgslsmith_clamp_u32(global1.d.d, 13059u, u_input.b), global1.a.x, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.b, 23u)], global1.d.e)) >= global0[_wgslsmith_index_u32(global1.d.b.x, 23u)]), -2147483647i <= firstLeadingBit(firstTrailingBit(u_input.a)), global1.e, true), !vec3<bool>(false | select(false, global1.d.c, global1.a.x), false, any(select(vec2<bool>(global1.a.x, global1.a.x), global1.b.xy, global1.d.a.wz))), global1.c, global1.d, true);
    global0 = array<f32, 23>();
    let var_0 = Struct_4(Struct_1(select(!select(vec4<bool>(global1.e, global1.e, global1.a.x, false), vec4<bool>(global1.e, global1.b.x, global1.e, global1.e), global1.a.x), vec4<bool>(!global1.b.x, !global1.a.x, u_input.b <= global1.d.d, !global1.b.x), select(vec4<bool>(false, false, global1.e, global1.d.a.x), global1.a, select(global1.d.a, global1.a, vec4<bool>(global1.e, global1.e, true, global1.d.a.x)))), global1.d.b, any(vec3<bool>(true, true, true)), u_input.c.x, _wgslsmith_f_op_f32(floor(global1.d.e))), _wgslsmith_f_op_vec2_f32(round(global1.c)), vec4<bool>(true, !(30394u > _wgslsmith_clamp_u32(u_input.c.x, 1u, u_input.d.x)), global1.a.x, all(select(select(vec3<bool>(false, true, global1.e), vec3<bool>(global1.d.a.x, true, true), true), !global1.d.a.ywy, select(vec3<bool>(global1.a.x, false, true), vec3<bool>(false, global1.a.x, global1.a.x), global1.d.a.x)))), ((select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), global1.b.x) << ((global1.d.b.zy << (u_input.c % vec2<u32>(32u))) % vec2<u32>(32u))) << (select(u_input.c >> (u_input.d.yz % vec2<u32>(32u)), global1.d.b.yx, vec2<bool>(global1.b.x, global1.b.x)) % vec2<u32>(32u))) & reverseBits(vec2<i32>(1i, u_input.a)));
    var var_1 = _wgslsmith_dot_vec4_i32(-max(min(-vec4<i32>(u_input.a, var_0.d.x, u_input.a, var_0.d.x), vec4<i32>(2147483647i, 1i, 12955i, 6264i)), vec4<i32>(-1i) * -vec4<i32>(u_input.a, var_0.d.x, var_0.d.x, var_0.d.x)), max(vec4<i32>(-15152i, max(max(42573i, var_0.d.x), u_input.a), -2664i, countOneBits(_wgslsmith_div_i32(u_input.a, 1i))), select(vec4<i32>(-1i, var_0.d.x, var_0.d.x, u_input.a) & countOneBits(vec4<i32>(u_input.a, -28482i, var_0.d.x, -4570i)), ~(-vec4<i32>(var_0.d.x, 4168i, u_input.a, 2147483647i)), false | (65425u > global1.d.d))));
    var_1 = _wgslsmith_div_i32(40565i, ~reverseBits(u_input.a));
    return _wgslsmith_f_op_f32(f32(-1f) * -719f);
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    var var_0 = 27500i;
    global2 = any(vec2<bool>(!any(vec3<bool>(arg_0.a.x, false, false)), _wgslsmith_f_op_f32(func_3()) <= -696f)) || all(!select(!arg_0.a.yw, select(vec2<bool>(arg_0.a.x, false), global1.b.zz, global1.b.x), !global1.b.x));
    let var_1 = ~(~_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, 26474i, u_input.a), firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(-1i, -2147483647i, u_input.a))));
    global2 = arg_0.c;
    let var_2 = _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, abs(u_input.a)), _wgslsmith_mult_vec2_i32(firstLeadingBit(var_1.xy), -vec2<i32>(u_input.a, 1353i)) & var_1.zx);
    return Struct_4(global1.d, _wgslsmith_f_op_vec2_f32(global1.c - vec2<f32>(-408f, -2166f)), global1.a, vec2<i32>(var_2, var_1.x));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_2(Struct_1(global1.d.a, vec3<u32>(0u, countOneBits(_wgslsmith_add_u32(global1.d.b.x, global1.d.d)), u_input.d.x), !(~2033i < (-17127i >> (global1.d.b.x % 32u))), ~global1.d.b.x, -595f), -1i);
    let var_1 = func_2(Struct_1(global1.d.a, u_input.d << (vec3<u32>(u_input.c.x, var_0.a.d << (var_0.a.b.x % 32u), u_input.d.x) % vec3<u32>(32u)), !var_0.a.c, global1.d.d | global1.d.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1634f + var_0.a.e) * var_0.a.e) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-483f - -1764f), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_0.a.b.x, 23u)])))))));
    global2 = var_1.c.x;
    let var_2 = _wgslsmith_f_op_f32(-917f - _wgslsmith_f_op_f32(func_3()));
    global0 = array<f32, 23>();
    return Struct_4(var_1.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.e, -833f), _wgslsmith_f_op_vec2_f32(max(func_2(func_2(Struct_1(var_0.a.a, var_1.a.b, var_1.c.x, 0u, 970f)).a).b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c) * _wgslsmith_f_op_vec2_f32(global1.c - global1.c)))), vec2<bool>(!all(vec4<bool>(global1.d.c, true, false, global1.a.x)), !(!var_0.a.a.x)))), select(global1.d.a, select(select(func_2(var_0.a).a.a, select(vec4<bool>(false, true, global1.b.x, false), vec4<bool>(var_0.a.c, false, false, true), vec4<bool>(true, var_1.c.x, false, var_0.a.a.x)), false), var_1.c, func_2(Struct_1(vec4<bool>(false, true, var_1.c.x, false), vec3<u32>(var_0.a.d, u_input.b, var_0.a.b.x), false, 18950u, -699f)).a.a), var_0.a.a), vec2<i32>(~var_1.d.x, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(783f, _wgslsmith_f_op_f32(round(530f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c)));
    var var_1 = func_1();
    var var_2 = Struct_2(global1.d, u_input.a);
    var_2 = Struct_2(func_1().a, u_input.a >> (21570u % 32u));
    global2 = var_2.a.c;
    var var_3 = Struct_1(vec4<bool>(true, !global1.b.x, !(all(global1.d.a.zw) == any(vec4<bool>(var_2.a.a.x, false, false, var_1.c.x))), any(var_2.a.a.xxx)), abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(85604u, 4294967295u, 8287u), ~vec3<u32>(9739u, 43271u, u_input.d.x) ^ vec3<u32>(0u, 103611u, var_1.a.d))), false, 4294967295u, var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_2.a.e, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-183f * var_0.x))))), func_1().d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.a.d, 23u)])), _wgslsmith_f_op_f32(sign(var_2.a.e)), _wgslsmith_f_op_f32(var_0.x + var_1.a.e) == _wgslsmith_f_op_f32(f32(-1f) * -954f))))));
}

