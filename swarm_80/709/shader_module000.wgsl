struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(7326u, 4294967295u, 1u, 50452u), false, vec2<bool>(false, false), vec3<f32>(653f, 249f, -415f));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32) -> i32 {
    return 31697i;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = select(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, func_3(-1819f))), vec4<i32>(-15280i, -13768i, 1i, u_input.a.x), true);
    let var_1 = ~vec3<u32>(1u, ~(~_wgslsmith_add_u32(59142u, arg_0)), 4294967295u);
    let var_2 = Struct_2(~u_input.a, arg_2, _wgslsmith_mod_vec2_i32(var_0.zz, countOneBits(abs(vec2<i32>(2147483647i, var_0.x)) | _wgslsmith_sub_vec2_i32(var_0.yw, vec2<i32>(-16528i, u_input.a.x)))));
    let var_3 = (_wgslsmith_clamp_vec4_i32(max(var_0, _wgslsmith_sub_vec4_i32(var_0, vec4<i32>(2302i, 55563i, -3495i, -1i))), -_wgslsmith_mod_vec4_i32(var_0, vec4<i32>(var_2.c.x, var_0.x, 10745i, -2147483647i)), ~max(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(-1i, 5890i, var_2.a.x, var_0.x))) >> (vec4<u32>(var_1.x, 39569u, _wgslsmith_clamp_u32(global0.a.x, _wgslsmith_clamp_u32(global0.a.x, 0u, var_2.b.a.x), 1u), 4294967295u) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(~global0.a, firstLeadingBit(vec4<u32>(4294967295u, 21304u, 15319u, 1u))), var_2.b.a) % vec4<u32>(32u));
    global0 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(var_1, var_2.b.a.xwx), _wgslsmith_dot_vec4_u32(vec4<u32>(13116u, 11336u, 20628u, 5401u), arg_2.a), var_1.x, ~global0.a.x), ~global0.a) ^ vec4<u32>(arg_0, ~_wgslsmith_div_u32(var_2.b.a.x, 75560u), _wgslsmith_clamp_u32(u_input.b, u_input.b, arg_2.a.x), arg_0), false, !vec2<bool>(select(true && var_2.b.b, var_2.b.b, arg_2.c.x), !(arg_1 || false)), arg_2.d);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.d.x * -751f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-760f * var_2.b.d.x) * -983f) + _wgslsmith_f_op_f32(floor(259f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.d.x, arg_2.d.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-705f)) + 1000f)), global0.d.x));
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_2(u_input.a, Struct_1(~global0.a, !(all(vec3<bool>(true, false, true)) & global0.b), select(vec2<bool>(true, true), !select(global0.c, global0.c, global0.c.x), global0.b), global0.d), u_input.a.xx);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(round(global0.d.x)), _wgslsmith_f_op_f32(473f - 381f), -465f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.d.x, global0.d.x, 254f, global0.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(270f, var_0.b.d.x, var_0.b.d.x, var_0.b.d.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b.d.x, global0.d.x, var_0.b.d.x, var_0.b.d.x)))))) * _wgslsmith_f_op_vec4_f32(func_2(reverseBits(_wgslsmith_mod_u32(~1u, global0.a.x | u_input.b)), all(vec3<bool>(global0.c.x, false, true)), var_0.b)));
    let var_2 = ~global0.a.x;
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.d.x - global0.d.x) + _wgslsmith_div_f32(-763f, global0.d.x))), _wgslsmith_f_op_f32(ceil(1000f)), -1193f));
    var var_3 = Struct_2(_wgslsmith_div_vec3_i32(firstLeadingBit(reverseBits(vec3<i32>(-2147483647i, -54606i, -33978i)) & ~var_0.a), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -1i, ~31406i), abs(abs(u_input.a)))), Struct_1(~abs(select(global0.a, vec4<u32>(u_input.b, global0.a.x, var_0.b.a.x, u_input.b), vec4<bool>(global0.b, var_0.b.b, true, var_0.b.b))), select(global0.b, all(vec2<bool>(var_0.b.c.x, false)), _wgslsmith_f_op_f32(var_1.x * 435f) != _wgslsmith_f_op_f32(abs(global0.d.x))), global0.c, vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.b.d.x)), 1924f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.d.x))))), ~vec2<i32>(~(-29707i | var_0.a.x), _wgslsmith_mod_i32(var_0.c.x, min(u_input.a.x, var_0.a.x))));
    return select(_wgslsmith_add_vec4_u32(var_3.b.a, _wgslsmith_mult_vec4_u32(var_3.b.a, var_3.b.a)), ~_wgslsmith_mod_vec4_u32(global0.a, ~select(var_3.b.a, vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 30908u), vec4<bool>(global0.c.x, var_3.b.b, var_0.b.b, var_0.b.c.x))), !vec4<bool>(var_0.b.b, all(vec4<bool>(false, true, false, global0.c.x)), all(global0.c), var_0.b.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d.x;
    let var_1 = vec3<u32>(u_input.b, global0.a.x, 79806u) >> (~abs(~vec3<u32>(78086u, 0u, u_input.b)) % vec3<u32>(32u));
    var var_2 = _wgslsmith_mult_i32(1i, 1i);
    let var_3 = true;
    global0 = Struct_1(func_1(), all(!select(vec2<bool>(global0.c.x, var_3), !vec2<bool>(global0.b, true), global0.c.x)), select(select(vec2<bool>(true, any(vec4<bool>(true, global0.b, true, true))), global0.c, true), global0.c, vec2<bool>(all(vec2<bool>(global0.b, var_3)), abs(77179u) != global0.a.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-485f, 808f)), -403f, _wgslsmith_f_op_f32(step(global0.d.x, -330f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(801f, -678f, global0.d.x) * global0.d))))));
    let var_4 = var_1.x ^ ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.x, 4294967295u, 37766u, var_1.x), global0.a), ~global0.a));
    global0 = Struct_1(vec4<u32>(~0u, 12868u, ~abs(var_4), 4294967295u), select(global0.c.x, !any(vec2<bool>(true, global0.c.x)), false), select(global0.c, !vec2<bool>(var_3, !var_3), vec2<bool>(var_3, var_3)), _wgslsmith_f_op_vec3_f32(-global0.d));
    global0 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(select(var_1.zy, vec2<u32>(global0.a.x, u_input.b), var_3), var_1.xy), ~71370u, abs(var_4 << (4294967295u % 32u)), select(_wgslsmith_add_u32(var_1.x, u_input.b), ~var_1.x, global0.d.x >= 305f)), abs(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 107545u, u_input.b, 78885u), global0.a), var_1.x ^ var_1.x, global0.a.x, _wgslsmith_clamp_u32(global0.a.x, u_input.b, 4294967295u)))), true, global0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0.d, vec3<f32>(-602f, 135f, 1283f))))))));
    let var_5 = 62700i;
    let x = u_input.a;
    s_output = StorageBuffer(max(11747u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(11378u, 4294967295u, 4294967295u, global0.a.x), global0.a), max(var_4, 0u), global0.a.x), func_1().yxx)), global0.d.zy, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x - global0.d.x)))), 791f), global0.d.x, vec4<u32>(~reverseBits(var_1.x), var_1.x, var_4, min(_wgslsmith_div_u32(1u, u_input.b), _wgslsmith_add_u32(67345u, global0.a.x))) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, global0.a.x, var_4), min(global0.a, vec4<u32>(4294967295u, global0.a.x, 4294967295u, 33498u))) % vec4<u32>(32u)));
}

