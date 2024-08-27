struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9>;

var<private> global1: Struct_2 = Struct_2(vec2<bool>(true, false));

var<private> global2: vec3<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1() -> u32 {
    global2 = -vec3<i32>(~(-_wgslsmith_sub_i32(global2.x, 66353i)), 0i, global2.x);
    let var_0 = global2.x;
    let var_1 = 234f;
    var var_2 = vec2<u32>(39204u, 1u);
    return var_2.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_2 {
    global2 = global0[_wgslsmith_index_u32(4294967295u, 9u)];
    return Struct_2(vec2<bool>(any(select(global1.a, vec2<bool>(global1.a.x, true), select(vec2<bool>(true, global1.a.x), global1.a, vec2<bool>(false, global1.a.x)))), all(select(vec3<bool>(global1.a.x, arg_1.c, arg_1.c), vec3<bool>(global1.a.x, false, arg_1.c), false))));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = Struct_1(vec3<u32>(1u >> (~(~u_input.b.x) % 32u), ~_wgslsmith_mult_u32(~u_input.b.x, max(31998u, 0u)), max(firstTrailingBit(firstLeadingBit(u_input.b.x)), u_input.b.x)), vec2<i32>(2147483647i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(global2.x, arg_0), -22572i), global2.x)), all(!select(select(vec3<bool>(false, global1.a.x, global1.a.x), vec3<bool>(global1.a.x, global1.a.x, false), vec3<bool>(true, false, true)), select(vec3<bool>(global1.a.x, global1.a.x, true), vec3<bool>(global1.a.x, global1.a.x, true), vec3<bool>(global1.a.x, global1.a.x, global1.a.x)), select(vec3<bool>(false, global1.a.x, global1.a.x), vec3<bool>(true, false, global1.a.x), vec3<bool>(false, global1.a.x, global1.a.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-726f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(961f + 853f) * -1000f)))));
    global2 = countOneBits(global0[_wgslsmith_index_u32(u_input.b.x, 9u)]);
    var var_1 = abs(_wgslsmith_sub_i32(-26902i, select(abs(_wgslsmith_clamp_i32(global2.x, 1i, global2.x)), ~abs(1i), global1.a.x)));
    var var_2 = firstTrailingBit(~(~countOneBits(var_0.a.x)));
    let var_3 = vec2<bool>(select(true, any(func_2(_wgslsmith_sub_vec2_u32(var_0.a.zz, vec2<u32>(var_0.a.x, 210u)), Struct_1(vec3<u32>(var_0.a.x, u_input.b.x, var_0.a.x), vec2<i32>(-18674i, var_0.b.x), true, var_0.d)).a), !(var_0.c | true)), false);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(205f - -2990f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-521f * var_0.d))))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(267f + _wgslsmith_f_op_f32(select(217f, 758f, var_3.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_sub_vec3_i32(~abs(global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), -(~global0[_wgslsmith_index_u32(u_input.b.x, 9u)])), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(-global0[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 2147483647i, u_input.a), reverseBits(vec3<i32>(global2.x, u_input.c, 2323i)))), firstLeadingBit(max(_wgslsmith_mod_vec3_i32(global0[_wgslsmith_index_u32(1u, 9u)], vec3<i32>(global2.x, 1i, u_input.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(-18502i, global2.x, global2.x), global0[_wgslsmith_index_u32(u_input.b.x, 9u)])))), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(global2.x), -2147483647i, i32(-1i) * -1i), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.c) ^ global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(~11894u, 9u)])), vec3<i32>(-8391i, abs(global2.x >> (0u % 32u)), _wgslsmith_div_i32(5240i, firstTrailingBit(-3052i)))));
    var var_0 = Struct_1(vec3<u32>(u_input.b.x, 48412u, 1u), global2.zx, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-529f + _wgslsmith_f_op_f32(f32(-1f) * -110f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1441f, 289f)))) * _wgslsmith_div_f32(757f, -1673f)));
    global1 = func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(~(~u_input.b.x), 95032u), var_0.a.yx | select(countOneBits(u_input.b.wy), var_0.a.xz, !vec2<bool>(global1.a.x, var_0.c))), Struct_1(vec3<u32>(var_0.a.x >> (1u % 32u), func_1() >> (~1u % 32u), 1u), var_0.b, true, -1000f));
    let var_1 = vec4<i32>(var_0.b.x, 17275i, global2.x, 2147483647i);
    var var_2 = func_2(~(~(~vec2<u32>(14855u, 1u))) | vec2<u32>(u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, var_0.a.x)), Struct_1(u_input.b.yyx, var_1.zy, !(global1.a.x & (var_0.d >= var_0.d)), _wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-21016i, 16668i), ~1i, reverseBits(14900i))))));
    let var_3 = Struct_3(Struct_1(vec3<u32>(27931u, abs(u_input.b.x), _wgslsmith_clamp_u32(1u & u_input.b.x, u_input.b.x, var_0.a.x)), _wgslsmith_add_vec2_i32(~vec2<i32>(-3828i, 2147483647i) << ((vec2<u32>(4294967295u, 87956u) << (vec2<u32>(22104u, u_input.b.x) % vec2<u32>(32u))) % vec2<u32>(32u)), -var_1.yx), 1u >= ~_wgslsmith_clamp_u32(32750u, 4294967295u, var_0.a.x), -467f), ~countOneBits(global2.x));
    var var_4 = Struct_3(var_3.a, var_3.a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(57786i, -global2.x, abs(var_1.x)), ~1u, -(select(27226i, -11253i, var_2.a.x) << (_wgslsmith_clamp_u32(var_4.a.a.x, 23460u, 31660u) % 32u)) ^ -41787i, u_input.b, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a.a.x, var_4.a.a.x, 49366u >> (1u % 32u), 1u), vec4<u32>(6804u & var_3.a.a.x, ~var_4.a.a.x, 68207u, 0u)), _wgslsmith_add_u32(~1u, max(28246u, _wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(18728u, 22066u, var_4.a.a.x)))), abs(18651u) & var_0.a.x, 8248u));
}

