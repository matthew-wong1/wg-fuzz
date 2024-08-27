struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2147483647i, vec4<u32>(13601u, 4294967295u, 19013u, 69550u), vec2<u32>(1u, 57302u), vec2<bool>(true, true), 4294967295u);

var<private> global1: f32 = -273f;

var<private> global2: vec4<f32> = vec4<f32>(1574f, -256f, 886f, 1010f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: vec4<i32>) -> vec2<bool> {
    let var_0 = vec4<f32>(-1185f, global2.x, arg_0, _wgslsmith_f_op_f32(671f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(f32(-1f) * -132f)))));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(min(abs(_wgslsmith_sub_vec3_u32(u_input.b, global0.b.wyz)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 13073u, 4294967295u), vec3<u32>(global0.b.x, u_input.d, global0.c.x), ~vec3<u32>(39773u, 1u, 647u))), vec3<u32>(max(1u, global0.e) ^ ~global0.e, 3714u, global0.c.x)), ~_wgslsmith_clamp_u32(global0.c.x, _wgslsmith_dot_vec3_u32(global0.b.xww, _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 24557u), global0.b.xwy)), u_input.d), _wgslsmith_add_u32(~global0.c.x, reverseBits(0u)));
    let var_2 = 1u;
    var_1 = u_input.c.xwx;
    let var_3 = 652f;
    return select(vec2<bool>(_wgslsmith_f_op_f32(-arg_2) < _wgslsmith_f_op_f32(-global2.x), true), global0.d, global0.d);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global2.x, -531f)))), _wgslsmith_f_op_f32(abs(-1638f))), global2.x));
    var var_1 = Struct_1(-1i, vec4<u32>(max(~(~global0.b.x), _wgslsmith_clamp_u32(~21975u, 0u, 36958u)), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(u_input.b.x, global0.b.x), 4294967295u), abs(min(global0.c.x, _wgslsmith_add_u32(u_input.c.x, 0u))), 50447u), ~vec2<u32>(_wgslsmith_mult_u32(u_input.d, u_input.d), u_input.b.x | 1u) & vec2<u32>(_wgslsmith_clamp_u32(~1u, ~global0.e, ~global0.c.x), 32546u), select(select(global0.d, select(!global0.d, vec2<bool>(global0.d.x, global0.d.x), true), !global0.d.x), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, 1828f))), -586f, _wgslsmith_f_op_f32(613f + _wgslsmith_f_op_f32(sign(global2.x))), -vec4<i32>(22311i, global0.a, u_input.a, global0.a) >> ((u_input.c << (global0.b % vec4<u32>(32u))) % vec4<u32>(32u))), vec2<bool>(!global0.d.x, global0.d.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(~0u), u_input.d, 1u), vec3<u32>(global0.e, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x, 8869u, 4294967295u) & global0.b.zxy, abs(vec3<u32>(56227u, u_input.c.x, u_input.d))), min(~27803u, 1u))));
    let var_2 = Struct_1(abs(1i), vec4<u32>(0u & (u_input.b.x ^ _wgslsmith_div_u32(38774u, u_input.b.x)), var_1.b.x, ~(~16135u), 1u), ~firstLeadingBit(vec2<u32>(global0.c.x, global0.e)) << ((var_1.b.zx << (~(~vec2<u32>(4294967295u, 16124u)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<bool>(var_1.d.x, var_1.d.x), reverseBits(~global0.e));
    let var_3 = global0.a;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(global2.wxx, vec3<f32>(1459f, -1431f, 306f), true)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) * _wgslsmith_f_op_f32(exp2(var_0))), var_0), (global2.x > 811f) | select(var_1.d.x || var_2.d.x, false, var_2.d.x))) + _wgslsmith_f_op_vec3_f32(global2.zyw + _wgslsmith_f_op_vec3_f32(global2.yzx * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(110f, global2.x, global2.x)))))));
    return -1707f;
}

fn func_1() -> u32 {
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2()), -1534f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1626f)) + global2.x)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) + _wgslsmith_f_op_f32(func_2()));
    global0 = Struct_1(17231i, max(u_input.c, ~(u_input.c << ((u_input.c ^ vec4<u32>(u_input.c.x, u_input.c.x, global0.c.x, u_input.c.x)) % vec4<u32>(32u)))), min(vec2<u32>(18137u, 1u), vec2<u32>(~(~global0.e), ~(68319u >> (0u % 32u)))), !vec2<bool>(true || global0.d.x, true), select(_wgslsmith_mult_u32(abs(1u), 1u), ~3271u, global0.d.x));
    return ~global0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(abs(u_input.a), _wgslsmith_add_i32(-26186i, u_input.a));
    let var_1 = global0.d;
    let var_2 = reverseBits(select(vec3<i32>(select(-7044i, var_0.x, global0.d.x), global0.a, abs(u_input.a)), firstTrailingBit(vec3<i32>(-37582i, 0i, var_0.x) | vec3<i32>(-1i, 41465i, 51752i)), var_1.x) & -firstLeadingBit(vec3<i32>(0i, -1i, var_0.x) | vec3<i32>(var_0.x, var_0.x, -1840i)));
    global1 = _wgslsmith_f_op_f32(ceil(global2.x));
    let var_3 = vec4<bool>(false, global0.d.x, global0.d.x, global0.d.x);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f)), 1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x))));
    let var_5 = Struct_1(var_0.x, global0.b, vec2<u32>(u_input.d, 8896u), vec2<bool>(select(!var_1.x, var_3.x, var_1.x != false), u_input.d >= _wgslsmith_dot_vec2_u32(~u_input.b.zz, ~u_input.c.zw)), _wgslsmith_sub_u32(firstLeadingBit(1041u), func_1() << (firstTrailingBit(_wgslsmith_mult_u32(30596u, 1u)) % 32u)));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(489f, _wgslsmith_div_f32(-340f, var_4.x)), var_4.x) + _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(global2.x - -1050f))), _wgslsmith_f_op_f32(global2.x + -1814f), -874f);
    var var_6 = var_2.x ^ firstTrailingBit(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.zy);
}

