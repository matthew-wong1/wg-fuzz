struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(4294967295u, 4294967295u, 1u, 11848u, 1u, 54372u, 1u, 1u, 2878u, 1u, 37159u, 19066u, 58308u, 0u, 0u, 4294967295u, 4294967295u);

var<private> global1: Struct_1 = Struct_1(vec4<i32>(12528i, 1i, -39635i, 36078i), vec2<bool>(true, true), vec3<u32>(4452u, 32429u, 34218u), vec4<i32>(1i, 2147483647i, 1i, 18513i));

var<private> global2: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: f32) -> f32 {
    global1 = Struct_1(vec4<i32>(2147483647i, arg_0.d.x, select(-2147483647i, 0i, true) | select(global1.d.x >> (arg_2.c.x % 32u), _wgslsmith_mult_i32(-3065i, -1i), !global1.b.x), -min(min(global2.a.x, global2.a.x), _wgslsmith_add_i32(arg_2.a.x, arg_2.d.x))), select(vec2<bool>(true, true), vec2<bool>(any(select(vec3<bool>(true, global1.b.x, arg_2.b.x), vec3<bool>(true, arg_2.b.x, true), true)), !arg_2.b.x & false), select(select(select(vec2<bool>(arg_0.b.x, false), vec2<bool>(arg_0.b.x, true), global1.b.x), !arg_2.b, global1.b), vec2<bool>(arg_2.b.x && global1.b.x, true), arg_2.b)), ~(~arg_0.c), ~arg_2.a);
    var var_0 = ~global1.a;
    let var_1 = 254f;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1 - arg_3), arg_1.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1.zx, _wgslsmith_f_op_vec2_f32(exp2(arg_1.yz))))));
    let var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(1i, _wgslsmith_add_i32(-2147483647i >> (arg_2.c.x % 32u), i32(-1i) * -22618i) >> (arg_0.c.x % 32u)), global1.d.xz);
    return _wgslsmith_f_op_f32(max(-945f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-972f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-583f)), _wgslsmith_f_op_f32(-arg_1.x), true)))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = all(vec4<bool>(true, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(-4130i, -36530i, 0i, global2.a.x), arg_2.b, arg_2.c, arg_2.d), vec3<f32>(611f, -1693f, 192f), Struct_1(vec4<i32>(arg_0.d.x, arg_0.a.x, arg_0.a.x, -62677i), arg_2.b, vec3<u32>(global1.c.x, 16846u, 4294967295u), vec4<i32>(-1i, -1i, -2147483647i, 2147483647i)), 1000f)), -1176f) <= 567f, global1.b.x));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_sub_i32(arg_2.a.x, arg_2.a.x), 12212i, ~((31187i << (global2.c.x % 32u)) >> (4294967295u % 32u))), max(firstTrailingBit(arg_0.d), arg_1.d));
    let var_2 = reverseBits(select(_wgslsmith_mod_u32(reverseBits(arg_2.c.x), 1u), arg_2.c.x, all(!arg_0.b) | arg_0.b.x));
    global1 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(select(2147483647i >> (0u % 32u), _wgslsmith_sub_i32(-85157i, global1.a.x), true), _wgslsmith_mod_i32(-55574i, _wgslsmith_div_i32(global2.a.x, 1460i)), -2147483647i ^ -global1.d.x, min(-53433i, _wgslsmith_sub_i32(arg_2.d.x, arg_1.a.x))), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(381i, u_input.b.x, arg_0.d.x, 1i), vec4<i32>(u_input.b.x, global2.a.x, arg_0.d.x, arg_0.d.x))), arg_2.d), select(arg_2.b, vec2<bool>(true, true), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global2.d.x, 2714i), global2.a.zxw) >= _wgslsmith_mult_i32(-global1.a.x, arg_2.a.x)), vec3<u32>(12461u, arg_2.c.x, firstTrailingBit(reverseBits(max(35624u, 4294967295u)))), -(~(~vec4<i32>(0i, u_input.b.x, -26470i, global1.d.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_2.c.x, 35492u), vec4<u32>(0u, 4294967295u, 57347u, global2.c.x)) % vec4<u32>(32u)))));
    global2 = Struct_1(vec4<i32>(countOneBits(2147483647i), max(-(-14566i >> (u_input.a.x % 32u)), abs(select(global1.d.x, 0i, global2.b.x))), _wgslsmith_dot_vec4_i32(~vec4<i32>(-11188i, 8397i, 10205i, global1.a.x), abs(vec4<i32>(arg_0.a.x, global1.d.x, 35942i, arg_0.a.x))) & -countOneBits(arg_1.d.x), min(_wgslsmith_dot_vec2_i32(~arg_1.d.yz, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(0i, global2.d.x))), global2.a.x)), vec2<bool>(all(!(!vec4<bool>(arg_1.b.x, false, false, false))), var_0), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u >> (global1.c.x % 32u), max(4294967295u, 33876u), ~4294967295u), ~(~vec3<u32>(global1.c.x, 31276u, arg_2.c.x))), _wgslsmith_add_vec4_i32(global1.d | firstTrailingBit(-vec4<i32>(-3760i, u_input.b.x, global2.d.x, global1.d.x)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(global1.d.x, 1i, global1.a.x, 1i)), global1.d << (vec4<u32>(1u, 0u, 15139u, 0u) % vec4<u32>(32u)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(493f)) + -1513f)) * 1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-259f * 558f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1241f - _wgslsmith_f_op_f32(round(887f))) - 1425f)));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(global2.d, global1.b, u_input.a, global2.d);
    var var_1 = -global2.a;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(min(-394f, 665f)), -288f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<i32>(var_0.d.x, var_0.a.x, -55714i, 41987i), vec2<bool>(global2.b.x, false), vec3<u32>(var_0.c.x, u_input.a.x, 0u), vec4<i32>(-2147483647i, var_0.a.x, global1.a.x, 1i)), var_0, var_0)), _wgslsmith_div_f32(-414f, 891f))) + -435f));
    var var_3 = ~firstTrailingBit(firstLeadingBit(max(vec4<u32>(var_0.c.x, 363u, global1.c.x, var_0.c.x), vec4<u32>(19973u, 43481u, u_input.a.x, u_input.a.x))) >> (~abs(vec4<u32>(32326u, u_input.a.x, 0u, 39785u)) % vec4<u32>(32u)));
    var var_4 = Struct_1(~(-(_wgslsmith_mod_vec4_i32(global1.d, vec4<i32>(var_0.d.x, 39364i, global2.d.x, global1.d.x)) ^ vec4<i32>(u_input.b.x, global2.d.x, global2.a.x, 1i))), global2.b, ~firstTrailingBit(~max(vec3<u32>(global2.c.x, 8397u, 1u), global1.c)), vec4<i32>(global2.a.x, select(var_0.a.x, var_0.a.x, global1.b.x), -global2.d.x, ~(~_wgslsmith_div_i32(global1.a.x, 2147483647i))));
    return var_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((~(global1.a >> (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.c.x, 17u)], 17u)], 17u)], 17u)], 43127u, 97253u, global2.c.x) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(8497u, 17u)], 11019u), 1u | global0[_wgslsmith_index_u32(28270u, 17u)], max(4294967295u, 99877u), ~u_input.a.x) % vec4<u32>(32u))) << (reverseBits(vec4<u32>(global2.c.x, countOneBits(global1.c.x), ~global1.c.x, 1u)) % vec4<u32>(32u)), select(global1.b, !global1.b, global2.b.x), ~(~_wgslsmith_div_vec3_u32(global2.c, _wgslsmith_mult_vec3_u32(vec3<u32>(global2.c.x, 4294967295u, 14468u), u_input.a))), ~(global1.d ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 24372i, -21512i, global1.d.x), global2.d)));
    let var_1 = Struct_1(vec4<i32>(func_1(), ~(-(~global2.d.x)), countOneBits(18011i), u_input.b.x ^ _wgslsmith_dot_vec3_i32(var_0.d.xww, ~vec3<i32>(global1.d.x, -20899i, global2.a.x))), select(var_0.b, global2.b, global2.b), firstTrailingBit(global1.c), global2.d);
    var var_2 = true;
    var var_3 = var_0;
    let var_4 = vec3<bool>(all(vec2<bool>(global2.b.x, var_0.b.x)), false, global2.b.x);
    var var_5 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_1.d.x, 17905i, 16435i), vec4<i32>(countOneBits(1i), -1i, i32(-1i) * -2147483647i, min(-44614i, u_input.b.x))), var_0.b, vec3<u32>(~(12345u & (global1.c.x & var_0.c.x)), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_3.c.x, global0[_wgslsmith_index_u32(var_3.c.x, 17u)], var_3.c.x) | vec4<u32>(4294967295u, 48395u, var_0.c.x, 1u), vec4<u32>(var_3.c.x, var_0.c.x, 0u, var_0.c.x)), 1u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(1u, 4294967295u)), select(vec2<u32>(var_0.c.x, 1u), global1.c.zx, var_0.b.x), vec2<u32>(u_input.a.x, 1u)), min(global1.c.zz | var_1.c.yx, vec2<u32>(var_0.c.x, u_input.a.x)))), var_1.a << (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.c.x, 66633u, u_input.a.x, var_1.c.x), vec4<u32>(47385u, global1.c.x, 7278u, 0u))) % vec4<u32>(32u)));
    var var_6 = any(global1.b);
    let var_7 = vec2<bool>(any(var_4.yx), !(4294967295u == _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 65359u), global2.c.x | 43955u)));
    let x = u_input.a;
    s_output = StorageBuffer(~36383u, global1.d.xyw, global1.c ^ _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.c, vec3<u32>(var_0.c.x, var_3.c.x, global1.c.x)), select(vec3<u32>(0u, 9072u, 5987u), var_0.c, false)), select(~var_3.c, vec3<u32>(1u, 39435u, 0u) << (var_0.c % vec3<u32>(32u)), true)));
}

