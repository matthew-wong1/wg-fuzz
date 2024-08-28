struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
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

var<private> global0: Struct_1 = Struct_1(true, vec4<u32>(24944u, 29910u, 25489u, 1u), false, vec2<bool>(false, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: bool) -> i32 {
    global0 = Struct_1(true, reverseBits(~global0.b), !global0.c, vec2<bool>(arg_2, any(global0.d)));
    var var_0 = ~vec2<u32>(global0.b.x, _wgslsmith_mod_u32(4294967295u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(31803u, 0u), arg_1.yz))));
    let var_1 = Struct_2(1147f, u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), u_input.a.xz);
    var var_2 = arg_0;
    let var_3 = Struct_1(arg_2, reverseBits(global0.b), global0.c, vec2<bool>(arg_2, true));
    return countOneBits(_wgslsmith_div_i32(-_wgslsmith_div_i32(-2147483647i, 30000i), ~arg_0) | _wgslsmith_add_i32(~(-arg_0), firstTrailingBit(-2147483647i)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> vec2<i32> {
    var var_0 = arg_1;
    let var_1 = u_input.a | vec4<i32>(reverseBits(var_0.d.x) | -u_input.c.x, 1i & func_3(-var_0.d.x, vec4<u32>(u_input.b.x, arg_0.b, var_0.b, global0.b.x), global0.c), firstTrailingBit(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-43858i, 56903i, var_0.d.x, -36278i), u_input.a, vec4<bool>(false, global0.a, true, global0.c)), u_input.a & u_input.a)), 104816i);
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.c))), var_0.a))), 76384u >> (firstLeadingBit(4294967295u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a)) * _wgslsmith_f_op_f32(step(-1755f, _wgslsmith_f_op_f32(sign(-1586f))))) + arg_1.c), firstLeadingBit(arg_0.d));
    let var_2 = arg_1;
    global0 = Struct_1(global0.a, global0.b, _wgslsmith_add_u32(firstTrailingBit(0u), arg_2) != global0.b.x, select(vec2<bool>(false, true), global0.d, global0.d.x));
    return ~select(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x << (global0.b.x % 32u), u_input.a.x ^ var_2.d.x), abs(-var_1.yx)), vec2<i32>(-(i32(-1i) * -16140i), var_2.d.x), global0.d.x);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> bool {
    var var_0 = arg_2;
    var_0 = Struct_2(-3105f, global0.b.x, -1697f, var_0.d ^ select(countOneBits(abs(vec2<i32>(-1i, -13786i))), abs(func_2(Struct_2(1564f, var_0.b, arg_2.c, var_0.d), Struct_2(var_0.a, arg_2.b, 1505f, vec2<i32>(arg_1, 2014i)), var_0.b)), true));
    var var_1 = reverseBits(~vec4<u32>(46285u, ~49648u, 1u, 0u));
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(202f, _wgslsmith_f_op_f32(128f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(-803f + 562f)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec4<bool>(global0.c, global0.d.x, all(vec3<bool>(true, global0.d.x, true)), func_1(Struct_1(false, global0.b, global0.c, global0.d), u_input.c.x, Struct_2(1074f, global0.b.x, -739f, vec2<i32>(u_input.c.x, 1i)), global0.a)), vec4<bool>(true, true, global0.c, true), select(!vec4<bool>(global0.c, true, global0.a, false), select(vec4<bool>(true, true, true, global0.c), vec4<bool>(global0.d.x, true, global0.c, global0.d.x), vec4<bool>(global0.a, global0.d.x, global0.d.x, global0.a)), global0.d.x)), !vec4<bool>(!global0.d.x, true & global0.a, global0.c, global0.d.x), global0.c);
    let var_1 = countOneBits(max(u_input.a, vec4<i32>(func_2(Struct_2(-1034f, global0.b.x, 689f, u_input.c), Struct_2(199f, global0.b.x, -503f, vec2<i32>(48981i, 1i)), global0.b.x ^ 23559u).x, -2147483647i, u_input.c.x, 0i)));
    let var_2 = !var_0.xw;
    global0 = Struct_1(global0.d.x, vec4<u32>(0u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b.x, 16025u, 28297u, global0.b.x) & vec4<u32>(global0.b.x, 33912u, 0u, 1u)), vec4<u32>(reverseBits(36859u), 0u, _wgslsmith_dot_vec3_u32(global0.b.xww, vec3<u32>(u_input.b.x, u_input.b.x, 0u)), 0u)), global0.b.x ^ (~global0.b.x & 4294967295u), _wgslsmith_div_u32(20437u, u_input.b.x)), all(!global0.d), var_2);
    global0 = Struct_1(!select(~4294967295u >= (u_input.b.x | global0.b.x), true, var_0.x), select(vec4<u32>(global0.b.x, global0.b.x, 4294967295u, ~60092u), ~global0.b, select(vec4<bool>(true && var_2.x, var_2.x, global0.d.x, func_1(Struct_1(var_0.x, global0.b, var_2.x, var_2), 20422i, Struct_2(1973f, 25602u, -852f, u_input.a.yy), false)), select(vec4<bool>(var_0.x, global0.c, var_2.x, false), vec4<bool>(false, global0.a, var_2.x, var_0.x), select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(false, var_2.x, false, true), false)), select(vec4<bool>(var_0.x, true, var_2.x, global0.d.x), select(vec4<bool>(false, true, false, true), vec4<bool>(true, var_2.x, var_0.x, global0.d.x), vec4<bool>(var_0.x, true, false, var_2.x)), vec4<bool>(global0.d.x, var_2.x, var_0.x, var_2.x)))), false, global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1595f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1269f * 1238f))));
}

