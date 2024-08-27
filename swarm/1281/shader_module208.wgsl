struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global2: Struct_2 = Struct_2(vec3<u32>(30927u, 13501u, 10954u));

var<private> global3: Struct_2 = Struct_2(vec3<u32>(1u, 61949u, 48875u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_2(global2.a);
    var var_1 = min(~(~global2.a), global2.a);
    var var_2 = vec4<bool>(any(vec2<bool>(global1.x, false | (true & global1.x))), global1.x, !(!global1.x), true);
    var var_3 = ~(~(1u >> (_wgslsmith_dot_vec2_u32(max(vec2<u32>(44945u, 25791u), vec2<u32>(var_0.a.x, global2.a.x)), ~arg_1.a.xz) % 32u)));
    let var_4 = var_2.wzx;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(143f * -2028f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-889f))) + 1000f))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = arg_1;
    let var_1 = Struct_2(abs(~(vec3<u32>(u_input.b.x, 4294967295u, global3.a.x) & vec3<u32>(arg_1.a.x, global3.a.x, global2.a.x))) | ~arg_2.a);
    let var_2 = global1.x;
    var var_3 = arg_0;
    var var_4 = ~(~(~select(reverseBits(vec4<u32>(arg_2.a.x, var_1.a.x, 58173u, global2.a.x)), vec4<u32>(54898u, 71338u, 53783u, arg_1.a.x), !vec4<bool>(global1.x, global1.x, true, global1.x))));
    return true;
}

fn func_4(arg_0: i32, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(563f, 731f));
    let var_1 = (global1.x || arg_1) && true;
    global1 = select(select(vec4<bool>(var_1, !var_1, true, abs(u_input.a) >= 1i), !vec4<bool>(true, var_0 < var_0, true, true), vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, global2.a.x, 20021u, global3.a.x), vec4<u32>(0u, 37868u, global3.a.x, u_input.d.x)) <= 60436u, false, !var_1, _wgslsmith_mult_i32(41587i, 0i) >= _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -8874i, 19576i, u_input.a), vec4<i32>(-76791i, u_input.a, arg_0, -2147483647i)))), vec4<bool>(false, !arg_1 && ((u_input.a >= -82859i) | arg_1), true, select(false, ~8646u >= _wgslsmith_mult_u32(41335u, u_input.d.x), global1.x)), !select(select(select(vec4<bool>(var_1, global1.x, arg_1, arg_1), vec4<bool>(global1.x, arg_1, arg_1, true), false), select(vec4<bool>(var_1, var_1, true, true), vec4<bool>(arg_1, global1.x, false, true), false), vec4<bool>(true, true, true, true)), !(!vec4<bool>(true, arg_1, true, var_1)), select(vec4<bool>(arg_1, true, true, false), !vec4<bool>(false, true, global1.x, false), !global1.x)));
    global0 = array<Struct_1, 20>();
    var var_2 = Struct_2(max(vec3<u32>(90828u, ~global3.a.x, u_input.e.x), vec3<u32>(3562u, 0u, global3.a.x) ^ vec3<u32>(1u, u_input.e.x, global3.a.x)) & ~(~_wgslsmith_div_vec3_u32(vec3<u32>(global2.a.x, global3.a.x, global2.a.x), u_input.b)));
    return global2.a.x;
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 20>();
    let var_0 = Struct_2(~(~global3.a));
    var var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 20u)];
    let var_2 = vec4<bool>(all(!(!(!var_1.c))), var_1.d, (1u & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 30199u, 13623u), _wgslsmith_clamp_vec3_u32(vec3<u32>(62741u, var_1.a.x, 4294967295u), vec3<u32>(global2.a.x, var_0.a.x, var_1.a.x), vec3<u32>(0u, u_input.e.x, global3.a.x)))) == max(u_input.e.x, func_4(firstTrailingBit(-14246i), func_3(-1383f, Struct_2(global3.a), Struct_2(vec3<u32>(76740u, var_1.a.x, var_1.a.x))))), all(var_1.c) || true);
    global1 = !(!var_2);
    return 848f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(74565u, 16895u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 12459i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, -67743i))), Struct_2(global3.a))), _wgslsmith_f_op_f32(-1093f - _wgslsmith_f_op_f32(f32(-1f) * -1222f)), 288f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-512f, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(round(678f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1712f, _wgslsmith_f_op_f32(-var_1.x))) + var_1.x), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -1161f)))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1695f + -1034f), _wgslsmith_f_op_f32(-540f - -400f)))))));
    var var_2 = ~(~0i);
    var var_3 = ~(-2147483647i);
    let var_4 = Struct_1(_wgslsmith_div_vec2_u32(u_input.e.xx, _wgslsmith_mod_vec2_u32(reverseBits(global2.a.xx), _wgslsmith_mult_vec2_u32(u_input.e.xx, firstTrailingBit(vec2<u32>(global2.a.x, global2.a.x))))), abs(vec2<i32>(u_input.a, ~(1i & u_input.a))), vec3<bool>(~global2.a.x <= 1u, true, true && (506f >= var_1.x)), select(true, global1.x, any(vec4<bool>(global1.x, any(vec2<bool>(global1.x, true)), true, select(global1.x, true, false)))), true);
    global0 = array<Struct_1, 20>();
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * 1000f), _wgslsmith_f_op_f32(-1313f * _wgslsmith_f_op_f32(func_2())), 1480f, _wgslsmith_f_op_f32(ceil(-632f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + 1017f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -928f) - _wgslsmith_f_op_f32(f32(-1f) * -558f)) - _wgslsmith_f_op_f32(sign(var_1.x))), var_1.x, -130f));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, var_4.b.x, _wgslsmith_f_op_f32(386f + _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-363f * 1543f)), var_1.x)), _wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_4.b.x, 2147483647i, -24185i), ~vec4<i32>(u_input.a, u_input.a, var_4.b.x, var_4.b.x)), vec4<i32>(-var_4.b.x, ~_wgslsmith_add_i32(var_4.b.x, 0i), u_input.a, var_4.b.x), ~(~vec4<i32>(var_4.b.x, -11324i, var_4.b.x, -34812i)) << (~(~vec4<u32>(4294967295u, u_input.b.x, var_4.a.x, global3.a.x)) % vec4<u32>(32u))));
}

