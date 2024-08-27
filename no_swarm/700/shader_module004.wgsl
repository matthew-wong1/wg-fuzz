struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: vec4<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(-55868i, 31677i, 48130i, 76820i, -31647i, 31996i, i32(-2147483648), 0i, -1117i, 9234i, 1i, 81399i, 34237i, 14434i, 37401i, 0i, 0i, 13517i, 2147483647i, -1i, -49575i, 18267i, -1i, -48355i, 56404i);

var<private> global1: vec2<bool>;

var<private> global2: vec4<f32> = vec4<f32>(-122f, -1001f, 1557f, -422f);

var<private> global3: vec3<f32> = vec3<f32>(1000f, 2910f, 485f);

var<private> global4: vec2<u32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global2.zzy)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(730f, global3.x))), global3.x))) * -1419f);
}

fn func_2(arg_0: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1730f);
    var var_1 = abs(58712i);
    var var_2 = _wgslsmith_f_op_f32(func_3());
    var var_3 = Struct_2(!(!select(!vec3<bool>(global1.x, global1.x, true), select(vec3<bool>(false, global1.x, true), vec3<bool>(false, global1.x, true), false), global1.x)));
    var var_4 = -(~_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(0u, 25u)] & 2147483647i, -global0[_wgslsmith_index_u32(global4.x, 25u)])) ^ ~u_input.a.x;
    return false;
}

fn func_1() -> vec2<i32> {
    global3 = global2.wzw;
    var var_0 = vec4<bool>(93846u == abs(u_input.d.x), !(!all(!vec2<bool>(global1.x, global1.x))), all(!select(!vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, false, false))), (global2.x >= 1684f) || false);
    global1 = select(var_0.xw, vec2<bool>(true, true), !var_0.xw);
    global1 = !(!vec2<bool>(true, func_2(_wgslsmith_div_vec2_f32(global2.xz, global2.xx))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, global3.x) * _wgslsmith_f_op_f32(-global2.x))))), Struct_1(firstTrailingBit(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, 33526u), 4294967295u)), firstTrailingBit(u_input.a.x), abs(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-57961i, u_input.a.x, 1i)), vec3<i32>(-29360i, u_input.a.x, 2147483647i) >> (vec3<u32>(1u, global4.x, 39023u) % vec3<u32>(32u)))), vec4<bool>(false, any(!vec4<bool>(true, global1.x, global1.x, global1.x)), true, true)), Struct_1(~u_input.b, min(reverseBits(_wgslsmith_add_i32(-41983i, u_input.a.x)), -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 25852i, global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(u_input.d.x, 25u)])), abs(u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -67012i), vec2<i32>(global0[_wgslsmith_index_u32(4618u, 25u)], 2147483647i))), _wgslsmith_sub_vec3_i32(-vec3<i32>(1i, 0i, u_input.a.x), vec3<i32>(-23413i, u_input.a.x, -1i))), select(!(!vec4<bool>(var_0.x, true, var_0.x, true)), vec4<bool>(false, false, true, global1.x), !(!vec4<bool>(true, var_0.x, false, global1.x)))), Struct_2(vec3<bool>(!all(vec3<bool>(global1.x, var_0.x, true)), ~u_input.b.x >= _wgslsmith_mod_u32(global4.x, global4.x), u_input.a.x >= (u_input.a.x << (13198u % 32u)))));
    return countOneBits(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_4(firstTrailingBit(u_input.a.x), select(vec3<bool>(global1.x, !all(vec2<bool>(true, true)), true), vec3<bool>(true, true, !(global1.x | global1.x)), select(select(vec3<bool>(global1.x, global1.x, global1.x), !vec3<bool>(false, global1.x, false), true), select(vec3<bool>(true, true, false), vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, global1.x, false)), !(global2.x > 1379f))), true, firstLeadingBit(~vec4<i32>(-1i, _wgslsmith_sub_i32(34910i, 1i), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(global4.x, 25u)], global0[_wgslsmith_index_u32(global4.x, 25u)], -18765i), _wgslsmith_sub_i32(u_input.a.x, var_0.x))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))), Struct_1(~(~vec2<u32>(u_input.b.x, global4.x)), ~var_0.x, _wgslsmith_mult_vec3_i32(vec3<i32>(11191i, -17994i, global0[_wgslsmith_index_u32(0u, 25u)]), vec3<i32>(global0[_wgslsmith_index_u32(global4.x, 25u)], -56358i, u_input.a.x) ^ vec3<i32>(u_input.a.x, var_0.x, global0[_wgslsmith_index_u32(1u, 25u)])), select(!vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(false, true, false, global1.x), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, global1.x, true), global1.x))), Struct_1(vec2<u32>(109278u, global4.x), 29i, firstLeadingBit(-vec3<i32>(2147483647i, 2147483647i, -9408i)), select(select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(true, global1.x, false, global1.x), false), select(vec4<bool>(false, false, true, global1.x), vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(global1.x, true, global1.x, global1.x)), select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(global1.x, true, global1.x, false), true))), Struct_2(vec3<bool>(!global1.x, func_2(vec2<f32>(-905f, -2066f)), 787f <= global2.x))));
    var var_2 = ~(~firstTrailingBit(var_1.d.zwy) & var_1.d.xyw);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -106f) + -1171f);
    var var_4 = ~reverseBits(u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.e.a * _wgslsmith_f_op_f32(-global2.x)), select(vec3<i32>(~2147483647i, ~_wgslsmith_add_i32(-12833i, var_1.a), 14616i), _wgslsmith_mult_vec3_i32(vec3<i32>(17891i, var_2.x, var_0.x), -vec3<i32>(-27701i, -2147483647i, u_input.a.x)), var_1.e.d.a));
}

