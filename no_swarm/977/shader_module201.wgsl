struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<f32>;

var<private> global2: Struct_2;

var<private> global3: vec3<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_2) -> f32 {
    global3 = countOneBits(_wgslsmith_add_vec3_i32(max(select(firstTrailingBit(vec3<i32>(-35427i, u_input.d, global3.x)), vec3<i32>(u_input.d, 19092i, global3.x), select(vec3<bool>(global2.e.b, true, true), arg_3.c, vec3<bool>(false, arg_3.c.x, true))), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(46403i, global3.x, 2147483647i), vec3<i32>(-11033i, u_input.d, 40354i)))), -vec3<i32>(-global3.x, _wgslsmith_div_i32(global3.x, global3.x), global3.x)));
    global2 = Struct_2(Struct_1(~arg_3.d.a, !any(vec2<bool>(true, arg_1.b)), _wgslsmith_f_op_f32(step(arg_3.b, 2230f))), _wgslsmith_div_f32(-1874f, _wgslsmith_f_op_f32(select(325f, _wgslsmith_f_op_f32(-arg_1.c), (arg_3.e.b | false) | true))), select(vec3<bool>(select(u_input.c == 1u, arg_0 <= global2.e.a.x, arg_3.e.b), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, global3.x, global3.x), vec3<i32>(global3.x, global3.x, u_input.d)) > u_input.d, _wgslsmith_f_op_f32(sign(1000f)) != -164f), select(arg_3.c, vec3<bool>(arg_3.e.b, true, true), any(select(global2.c.yx, vec2<bool>(arg_1.b, arg_3.c.x), arg_3.a.b))), vec3<bool>(arg_3.a.b, !(!global2.e.b), any(!arg_3.c))), Struct_1(arg_2.a.a, global2.a.b, arg_3.b), Struct_1(~(~u_input.a), arg_2.b.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2.b.c, arg_2.a.c)), _wgslsmith_f_op_f32(-arg_2.b.c)))));
    global2 = arg_3;
    let var_0 = select(vec2<bool>(arg_2.b.b, !(!select(true, true, arg_3.d.b))), select(arg_3.c.zy, !(!select(vec2<bool>(arg_3.c.x, global2.d.b), vec2<bool>(true, arg_3.e.b), false)), -24556i <= u_input.d), !vec2<bool>(arg_3.a.b, !(!global2.d.b)));
    global1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-234f, _wgslsmith_f_op_f32(ceil(global1.x))), vec2<f32>(_wgslsmith_f_op_f32(arg_1.c - global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1744f) - _wgslsmith_f_op_f32(arg_2.b.c * 518f)))));
    return _wgslsmith_f_op_f32(arg_3.b + arg_2.b.c);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<f32>) -> vec4<f32> {
    var var_0 = vec4<i32>(53971i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, global3.x, 9656i) << (vec3<u32>(0u, 0u, u_input.c) % vec3<u32>(32u)), ~(vec3<i32>(global3.x, -9937i, 18320i) & vec3<i32>(1i, 25913i, u_input.d))), abs(vec3<i32>(-1i) * -vec3<i32>(1i, 0i, 32336i))), 55035i, i32(-1i) * -66484i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_u32(50914u, global2.a.a.x) | (global2.d.a.x ^ u_input.b), Struct_1(vec2<u32>(global2.d.a.x, 105220u), all(vec4<bool>(global2.d.b, global2.c.x, global2.c.x, global2.a.b)), _wgslsmith_f_op_f32(arg_2.x + 1595f)), Struct_4(Struct_1(vec2<u32>(0u, arg_1), true, arg_0.x), global2.d), Struct_2(Struct_1(u_input.a, global2.e.b, global1.x), _wgslsmith_f_op_f32(-arg_0.x), !vec3<bool>(true, global2.c.x, global2.d.b), Struct_1(u_input.a, global2.e.b, arg_2.x), Struct_1(vec2<u32>(68886u, 28810u), global2.a.b, -489f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b * -252f), _wgslsmith_f_op_f32(sign(global1.x))), -115f)));
    var var_2 = ~arg_1;
    var var_3 = firstLeadingBit(4294967295u);
    let var_4 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1303f + 118f))), -181f))), vec4<f32>(var_1, arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * 449f), -557f))), global1.x), arg_1, global2.a, max(1u, ~(~max(1u, 1u))));
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.c, arg_3.c, _wgslsmith_f_op_f32(1000f + -1131f), _wgslsmith_f_op_f32(trunc(929f))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_3.c), _wgslsmith_f_op_f32(round(-1853f)), _wgslsmith_f_op_f32(ceil(-426f)), _wgslsmith_f_op_f32(sign(arg_3.c)))), min(_wgslsmith_mod_u32(~4294967295u, 31278u), 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global2.b, 880f, -127f, -286f), vec4<f32>(476f, -794f, global2.d.c, 1149f))))))));
    var var_1 = ~arg_2;
    var var_2 = global2.a;
    let var_3 = global2.a.a.x;
    var var_4 = vec3<i32>(-_wgslsmith_add_i32(~global3.x, ~(-23091i)), -46503i, u_input.d);
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, _wgslsmith_f_op_f32(-arg_3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) + _wgslsmith_f_op_f32(max(global1.x, -1248f))))), vec3<f32>(_wgslsmith_f_op_f32(308f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x - var_0.x), var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-150f * global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.c * global1.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(false, vec3<i32>(-1i, 4434i, u_input.d), vec3<u32>(13317u, 23889u, 45377u), Struct_1(vec2<u32>(global2.a.a.x, u_input.b), true, -1355f))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-748f, global2.e.c, global2.b)))), vec3<f32>(_wgslsmith_f_op_f32(1000f + -351f), _wgslsmith_f_op_f32(-1091f - -356f), global2.a.c)))), vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_1(global2.a.b, vec3<i32>(global3.x, 1i, -2147483647i), vec3<u32>(26214u, 18142u, global2.d.a.x), global2.d)).x, _wgslsmith_f_op_f32(global1.x + global1.x)))), -408f)));
    global3 = -_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(-1i, u_input.d), _wgslsmith_sub_i32(-2147483647i, global3.x), ~global3.x)), max(countOneBits(countOneBits(vec3<i32>(u_input.d, global3.x, -1i))), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(u_input.d, 2147483647i, global3.x)), -vec3<i32>(global3.x, u_input.d, 10377i), _wgslsmith_mult_vec3_i32(vec3<i32>(-50949i, -20416i, global3.x), vec3<i32>(global3.x, u_input.d, 1i)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1344f * var_0.x), var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1099f))), _wgslsmith_f_op_vec4_f32(func_2(vec4<f32>(-1000f, 3373f, 364f, -3067f), ~0u, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 281f, 1790f, global1.x), vec4<f32>(global2.b, 726f, -1382f, 234f)))).x, -1426f)), global2.a.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, 428f, global1.x, global1.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1359f, -1440f, 256f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global1.x, -1910f, -1982f)), select(vec4<bool>(true, true, true, true), vec4<bool>(global2.e.b, true, true, global2.a.b), vec4<bool>(true, global2.c.x, false, true)))), !all(vec4<bool>(true, true, true, true))))))).wwx;
    global3 = ~max(reverseBits(vec3<i32>(i32(-1i) * -1i, -global3.x, global3.x >> (1u % 32u))), vec3<i32>(~(-5859i), -(i32(-1i) * -1i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, global3.x), global3.zx)));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-846f, global2.e.c) - var_1.xx))) - var_0.zy));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zx), var_0.xy)), var_1.yz)));
    let var_2 = countOneBits(vec3<u32>(global2.a.a.x, ~_wgslsmith_add_u32(global2.e.a.x, 79596u) << ((global2.a.a.x & ~global2.a.a.x) % 32u), _wgslsmith_clamp_u32(u_input.c, firstTrailingBit(u_input.c), ~4294967295u) >> (global2.d.a.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.d | ((global3.x & u_input.d) >> (~109671u % 32u))), -1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0 + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, 989f, 3055f), _wgslsmith_f_op_vec3_f32(-var_0), global2.c))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(191f - global2.b), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -184f)))), abs(global3.x), var_1.x);
}

